import { Model, DataTypes } from "sequelize";
import { sequelize } from "./sequelize.js";

export class MovieCategory extends Model {}

MovieCategory.init(
  {
    name: {
      type: DataTypes.STRING,
      allowNull: false,
      unique: true,
    },
  },
  {
    sequelize,
    tableName: "movie_category",
  }
);
