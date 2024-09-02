import { Model, DataTypes } from "sequelize";
import { sequelize } from "./sequilize.js";

export class MovieCategory extends Model {}

movieCategory.init(
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
