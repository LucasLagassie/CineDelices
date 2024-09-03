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