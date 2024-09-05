import { MovieAndSerie } from "../models/index.js";
import { Recipe } from "../models/index.js";
import { HTTPError } from "../errors/httpError.js";
import { notFound } from "../middlewares/notFound.js";
import { errorHandler } from "../middlewares/errorHandler.js";

export const getAll = async (req, res) => {
  const movieAndSeries = await MovieAndSerie.findAll({
    include: {
      association: "recipes",
    },
  });
  return res.json(movieAndSeries);
};

export const getOne = async (req, res) => {
  const movieAndSerie = await MovieAndSerie.findByPk(req.params.id, {
    include: {
      association: "recipes",
    },
  });
  if (!movieAndSerie) {
    throw new HTTPError(404, "Oups! Cette scénario semble manquer au scénario");
  }
  return res.json(movieAndSerie);
};
