import { MovieAndSerie } from "../models/index.js";
import { Recipe} from "../models/index.js";

export const getAll = async (req, res) => {
    const movieAndSeries = await MovieAndSerie.findAll({
        include: {
            association: "recipe",
            through: { attributes: []},
         
        },
    });
    return res.json(movieAndSeries);
}

export const getMoviesByRecipe = async (req, res) => {
    const recipes = await Recipe.findByPk(req.params.id, {
        include: {
            association: "movieAndSerie",
            through: { attributes: []},
        },
    });
    
    if(!recipes){
      throw new HTTPError(404, "Oups! Cette scénario semble manquer au scénario");
    }
    return res.json(recipes.movieAndSerie);
};