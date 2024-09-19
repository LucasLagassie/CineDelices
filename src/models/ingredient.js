import { Model, DataTypes } from "sequelize";
import { sequelize } from "./sequelize.js";

export class Ingredient extends Model {}

Ingredient.init(
  {
    name: {
      type: DataTypes.STRING,
      allowNull: false,
      unique: true,
    },
    picture: {
      type: DataTypes.STRING,
      allowNull: true,
    },
  },
  {
    sequelize,
    tableName: "ingredient",
  }
);
