import joi from "joi";
import { HTTPError } from "../errors/httpError.js";

export const idSchema = joi.object({
  id: joi.number().integer().required(),
});

// Schémas de validation pour la route recipe/:id/movieAndSerie/:id
export const recipeAndMovieSerieSchema = joi.object({
  recipeId: joi.number().integer().required(),
  movieAndSerieId: joi.number().integer().required(),
});

// Schémas de validation pour la route recipe/:id/ingredient/:id
export const recipeAndIngredientSchema = joi.object({
  recipeId: joi.number().integer().required(),
  ingredientId: joi.number().integer().required(),
  quantity: joi.string().required(),
});

// Schémas de validation pour la route recipe/:id/recipeCategory/:id
export const recipeAndRecipeCategorySchema = joi.object({
  recipeId: joi.number().integer().required(),
  recipeCategoryId: joi.number().integer().required(),
});

// Schémas de validation pour les recettes

export const createRecipeSchema = joi.object({
  name: joi.string().required(),
  description: joi.string().required(),
  picture: joi.string(),
  difficulty: joi.string().required(),
  time: joi.string().required(),
  instruction: joi.string().required(),
  recipeCategoryId: joi.number().integer().required(),
  movieAndSerieId: joi.number().integer().required(),
  userId: joi.number().integer().required(),
});

export const updateRecipeSchema = joi
  .object({
    name: joi.string(),
    description: joi.string(),
    picture: joi.string(),
    difficulty: joi.string(),
    time: joi.string(),
    instruction: joi.string(),
    recipeCategoryId: joi.number().integer(),
    movieAndSerieId: joi.number().integer(),
    userId: joi.number().integer(),
  })
  .min(1);

// Schémas de validation pour les utilisateurs

export const createUserSchema = joi.object({
  email: joi.string().email().required(),
  pseudo: joi.string().min(3).required(),
  password: joi.string().required(),
  avatar: joi.string(),
  role: joi.string().required(),
});

export const updateUserSchema = joi
  .object({
    email: joi.string().email(),
    pseudo: joi.string().min(3),
    password: joi.string(),
    avatar: joi.string(),
    role: joi.string(),
  })
  .min(1); // Cela signifie que l'objet doit contenir au moins un des champs définis (email, pseudo, password, avatar, role). Si l'objet envoyé dans la requête est vide ou ne contient aucun de ces champs, la validation échouera.

export const createValidationMiddleWare = (schema, requestProperty) => {
  return (req, res, next) => {
    const { error } = schema.validate(req[requestProperty]);

    if (!error) {
      return next();
    } else {
      const errorMessage = error.details[0].message;
      const httpError = new HTTPError(400, errorMessage);
      return next(httpError);
    }
  };
};
