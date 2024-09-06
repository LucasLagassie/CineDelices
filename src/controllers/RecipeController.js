import { Recipe } from "../models/recipe.js";
import { MovieAndSerie } from "../models/movieAndSerie.js";
import { HTTPError } from "../errors/httpError.js";

export const getAll = async (req, res) => {

  const recipes = await Recipe.findAll({
    include: [
      {
        association: "ingredient",
      },
      {
        association: "recipeCategory",
      },
    ],
  });
  return res.json(recipes);
};


export const getOne = async (req, res) => {
  const recipe = await Recipe.findByPk(req.params.id, {
    include: [
      { association: "ingredient" },
      {
        association: "recipeCategory",
      },
    ],
  });
  if (!recipe) {
    throw new HTTPError(404, "Oups! Cette scène semble manquer au scénario");
  }
  return res.json(recipe);
};

export const getRecipesByMovie = async (req, res) => {
  const movies = await MovieAndSerie.findByPk(req.params.id, {
    include: {
      association: "recipes",
      through: { attributes: [] },
    },
  });

  if (!movies) {
    throw new HTTPError(404, "Oups! Cette scénario semble manquer au scénario");
  }
  return res.json(movies.recipes);
};

