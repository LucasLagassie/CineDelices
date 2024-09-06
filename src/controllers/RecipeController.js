import { Recipe, RecipeHasIngredient, RecipeCategory, MovieCategory, MovieHasCategory, Ingredient, MovieAndSerie} from "../models/index.js";
import { HTTPError } from "../errors/httpError.js";

export const getAll = async (req, res) => {
    const recipes = await Recipe.findAll({
        include: [
            {
                association: "ingredient",
                through: { attributes: []},
            },
            {
                association: "recipe_category",
                through: { attributes: []},
            },
        ],
    });
    return res.json(recipes);

}

export const getOne = async (req, res) => {
    const recipe = await Recipe.findByPk(req.params.id,{
      include: {
        association: "ingredient",
        through: { attributes: [] },
      },
    });
    if(!recipe){
      throw new HTTPError(404, "Oups! Cette scène semble manquer au scénario");
    }
    return res.json(recipe);
  };

  export const createOne = async (req, res) =>{
    const recipe = await Recipe.create(req.body);
    return res.status(201).json(recipe);
  };
  
  export const modifyOne = async (req, res) => {
    const recipe = await Recipe.findByPk(req.params.id, {
      include: {
        association: "ingredient",
        through: { attributes: [] },
      },
    });
  
    if(!recipe){
      throw new HTTPError(404, "Oups! Cette scène semble manquer au scénario");
    }
  
    await recipe.update(req.body);
    return res.json(recipe);
  };

  export const deleteOne = async (req, res) => {
    const recipe = await Recipe.findByPk(req.params.id);
    if(!recipe){
      throw new HTTPError(404, "Oups! Cette scène semble manquer au scénario");
    }
    await recipe.destroy();
    return res.status(204).end();
  };
  
  export const associateOneWithCategory = async (req, res) => {
    const recipe = await Recipe.findByPk(req.params.id);
    if(!recipe){
      throw new HTTPError(404, "Oups! Cette scénario semble manquer au scénario");
    }
    await recipe.setRecipeCategory(req.body);
    return res.json(recipe);
  };

  export const getRecipesByMovie = async (req, res) => {
    const movies = await MovieAndSerie.findByPk(req.params.id, {
        include: {
            association: "recipes",
            through: { attributes: []},
        },
    });
    
    if(!movies){
      throw new HTTPError(404, "Oups! Cette scénario semble manquer au scénario");
    }
    return res.json(movies.recipes);
  };
  