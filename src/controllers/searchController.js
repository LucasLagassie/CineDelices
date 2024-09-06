import { Recipe, MovieAndSerie } from "../models";
import { HTTPError } from "../errors/httpError.js";
import Fuse from 'fuse.js'

export const searchAll = async (req, res) => {
    try {
        const recipes = await Recipe.findAll({
            include: [
                {
                    association: "ingredient",
                    through: { attributes: [] },
                },
                {
                    association: "recipe_category",
                    through: { attributes: [] },
                },
            ],
        });

        const moviesAndSeries = await MovieAndSerie.findAll();

        const allData = [
            ...recipes.map(recipe => ({ type: 'recipe', ...recipe.toJSON() })),
            ...moviesAndSeries.map(movieOrSerie => ({ type: 'movieOrSerie', ...movieOrSerie.toJSON() })),
        ];

        
        const fuse = new Fuse(allData, {
            keys: ['name', 'title', 'ingredient.name'], 
        });

        
        const results = req.query.q ? fuse.search(req.query.q).map(result => result.item) : alldData;

        return res.json(results);

    } catch (err) {
        console.error(err);
        throw new HTTPError(500, "Erreur interne du serveur");
    }
};
