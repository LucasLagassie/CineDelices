import { Model, DataTypes } from "sequelize";
import { sequelize } from "./sequelize.js";
import { Recipe } from "./recipe.js";
import { Ingredient } from "./ingredient.js";

export class RecipeHasIngredient extends Model {}

RecipeHasIngredient.init(
  {
    recipeId: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: Recipe,
        key: "id",
      },
    },
    ingredientId: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: Ingredient,
        key: "id",
      },
    },
  },
  {
    sequelize,
    tableName: "recipe_has_ingredient",
    indexes: [
      {
        unique: true,
        fields: ["recipe_id", "ingredient_id"],
      },
    ],
  }
);
