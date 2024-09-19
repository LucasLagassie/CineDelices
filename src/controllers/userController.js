import { User } from "../models/user.js";
import { Recipe } from "../models/recipe.js";
import { HTTPError } from "../errors/httpError.js";

export const getUser = async (req, res) => {
  const user = await User.findByPk(req.params.id, {
    include: {
      association: "recipes",
    },
  });

  if (!user) {
    throw new HTTPError(
      404,
      "Oups! Cet utilisateur semble manquer au scénario"
    );
  }

  return res.json(user);
};

export const editUser = async (req, res) => {
  const user = await User.findByPk(req.params.id, {
    include: [
      {
        association: "recipe",
        through: { attributes: [] },
      },
      {
        association: "movie_and_series",
        through: { attributes: [] },
      },
    ],
  });

  if (!user) {
    throw new HTTPError(
      404,
      "Oups! Cet utilisateur semble manquer au scénario"
    );
  }

  await user.update(req.body);
  return res.json(user);
};

export const deleteUser = async (req, res) => {
  const user = await User.findByPk(req.params.id);
  if (!user) {
    throw new HTTPError(
      404,
      "Oups! Cet utilisateur semble manquer au scénario"
    );
  }
  await user.destroy();
  return res.status(204).end();
};

export const createRecipe = async (req, res) => {
  const recipe = await Recipe.create(req.body);
  return res.status(201).json(recipe);
};

export const deleteRecipe = async (req, res) => {
  const recipe = await Recipe.findByPk(req.params.id);
  if (!recipe) {
    throw new HTTPError(404, "Recette non trouvée");
  }
  await recipe.destroy();
  return res.status(204).end();
};

export const editRecipe = async (req, res) => {
  const recipe = await Recipe.findByPk(req.params.id);
  if (!recipe) {
    throw new HTTPError(404, "Recette non trouvée");
  }
  await recipe.update(req.body);
  return res.json(recipe);
};
