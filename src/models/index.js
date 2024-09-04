import { User } from "./user.js";
import { Recipe } from "./recipe.js";
import { RecipeCategory } from "./recipeCategory.js";
import { MovieAndSerie } from "./movieAndSerie.js";
import { MovieCategory } from "./movieCategory.js";
import { Ingredient } from "./ingredient.js";
import { RecipeHasIngredient } from "./recipeHasIngredient.js";
import { MovieHasCategory } from "./movieHasCategory.js";

import { sequelize } from "./sequelize.js";

// relation User/Recipe (One-to-Many)
User.hasMany(Recipe, {
  as: "recipes", // alias de l'association
  foreignKey: {
    name: "userId",
    allowNull: false,
  },
});

Recipe.belongsTo(User, {
  as: "user",
  foreignKey: {
    name: "userId",
    allowNull: false,
  },
});
// relation Recipe/MovieAndSerie (One-to-Many)
MovieAndSerie.hasMany(Recipe, {
  as: "recipes", // alias de l'association
  foreignKey: {
    name: "movieId",
    allowNull: false,
  },
});

Recipe.belongsTo(MovieAndSerie, {
  as: "movieAndSerie",
  foreignKey: {
    name: "movieId",
    allowNull: false,
  },
});

//relation Recipe/RecipeCategory (One-to-Many)
RecipeCategory.hasMany(Recipe, {
  as: "recipes", // alias de l'association
  foreignKey: {
    name: "recipeCategoryId",
    allowNull: false,
  },
});

Recipe.belongsTo(RecipeCategory, {
  as: "recipeCategory",
  foreignKey: {
    name: "recipeCategoryId",
    allowNull: false,
  },
});

// relation Recipe/Ingredient (Many-to-Many)
Recipe.belongsToMany(Ingredient, {
  as: "ingredients",
  through: RecipeHasIngredient,
});

Ingredient.belongsToMany(Recipe, {
  as: "recipes",
  through: RecipeHasIngredient,
});

// relation MovieAndSerie/MovieCategory (Many-to-Many)
MovieAndSerie.belongsToMany(MovieCategory, {
  as: "movieCategories",
  through: MovieHasCategory,
});

MovieCategory.belongsToMany(MovieAndSerie, {
  as: "movieAndSeries",
  through: MovieHasCategory,
});

export {
  User,
  Recipe,
  RecipeCategory,
  MovieAndSerie,
  MovieCategory,
  Ingredient,
  RecipeHasIngredient,
  MovieHasCategory,
  sequelize,
};
