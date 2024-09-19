import { Model, DataTypes } from "sequelize";
import { sequelize } from "./sequelize.js";

export class MovieAndSerie extends Model {}

MovieAndSerie.init(
  {
    name: { type: DataTypes.STRING, allowNull: false },
    synopsis: { type: DataTypes.STRING, allowNull: false },
    director: { type: DataTypes.STRING, allowNull: false },
    actor: { type: DataTypes.STRING, allowNull: false },
    release_date: { type: DataTypes.STRING, allowNull: false },
    picture: { type: DataTypes.STRING },
  },
  {
    sequelize,
    tableName: "movie_and_serie",
  }
);
