import { Router } from "express";
import { controllerWrapper } from "../controllers/controllerWrapper.js";
import { adminController } from "../controllers/adminController.js";
import {
  idSchema,
  createUserSchema,
  updateUserSchema,
  createRecipeSchema,
  updateRecipeSchema,
  createMovieAndSerieSchema,
  updateMovieAndSerieSchema,
  createValidationMiddleWare,
} from "../validation/schemas.js";

export const router = Router();

//Get all the users
router.get("/users", controllerWrapper(adminController.getAllUsers));

router.get(
  "/:id",
  createValidationMiddleWare(idSchema, "params"),
  controllerWrapper(adminController.getUser)
);
//delete an user
router.delete(
  "/users/:id",
  createValidationMiddleWare(idSchema, "params"),
  controllerWrapper(adminController.deleteUsers)
);
//get all the recipes
router.get("/recipes", controllerWrapper(adminController.getAllRecipes));
//create a recipe
router.post(
  "/recipes",
  createValidationMiddleWare(createRecipeSchema, "body"),
  controllerWrapper(adminController.createRecipe)
);
//edit a recipe

router.put(
  "/recipes/id",
  createValidationMiddleWare(idSchema, "params"),
  createValidationMiddleWare(updateRecipeSchema, "body"),
  controllerWrapper(adminController.editRecipe)
);
//delete a recipe
router.delete(
  "/recipes/:id",
  createValidationMiddleWare(idSchema, "params"),
  controllerWrapper(adminController.deleteRecipe)
);
//get all the movies and series
router.get(
  "/moviesSeries",
  controllerWrapper(adminController.getAllMoviesAndSeriesCategory)
);
//create a movies and series category
router.post(
  "/moviesSeries",
  createValidationMiddleWare(createMovieAndSerieSchema, "body"),
  controllerWrapper(adminController.createMoviesAndSeriesCategory)
);
//edit a movies and series category
router.put(
  "/moviesSeries/:id",
  createValidationMiddleWare(idSchema, "params"),
  createValidationMiddleWare(updateMovieAndSerieSchema, "body"),
  controllerWrapper(adminController.editMoviesAndSeriesCategory)
);
// delete a movies and series category
router.delete(
  "/moviesSeries/:id",
  createValidationMiddleWare(idSchema, "params"),
  controllerWrapper(adminController.deleteMoviesAndSeriesCategory)
);
