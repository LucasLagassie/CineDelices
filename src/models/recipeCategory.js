import { Model, DataTypes } from "sequelize";
import { sequelize } from "./sequelize.js";

export class RecipeCategory extends Model {}

RecipeCategory.init(
  {
    name: {
      type: DataTypes.STRING,
      allowNull: false,
      unique: true,
    },
  },
  {
    sequelize,
    tableName: "recipe_category",
  }
);
