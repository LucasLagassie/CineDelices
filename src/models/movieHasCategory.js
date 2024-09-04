import { Model, DataTypes } from "sequelize";
import { sequelize } from "./sequelize.js";
import { MovieAndSerie } from "./movieAndSerie.js";
import { MovieCategory } from "./movieCategory.js";

export class MovieHasCategory extends Model {}

MovieHasCategory.init(
  {
    movieId: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: MovieAndSerie,
        key: "id",
      },
    },
    movieCategoryId: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: MovieCategory,
        key: "id",
      },
    },
  },
  {
    sequelize,
    tableName: "movie_has_category",
    indexes: [
      {
        unique: true,
        fields: ["movie_id", "movie_category_id"],
      },
    ],
  }
);
