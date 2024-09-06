import "dotenv/config";
import express from "express";
import cors from "cors";
import { router } from "./src/routers/index.js";
import dotenv from "dotenv";
import { sequelize } from "./src/models/sequelize.js";
import { MovieAndSerie } from "./src/models/movieAndSerie.js";
import { Recipe } from "./src/models/recipe.js";

const port = process.env.PORT || 3000;

export const app = express();

app.use(cors({ origin: process.env.ALLOWED_DOMAINS }));

app.use(express.json());

app.use(router);

app.use(notFound);

app.use(express.static("public"));

app.listen(port, () => {
  console.log(`Server listening on port ${port}`);
});
