import { Router } from "express";
import { controllerWrapper } from "../controllers/controllerWrapper.js";
import {
  getAll,
  getOne,
  createOne,
  updateOne,
  deleteOne,
<<<<<<< HEAD
  getLatestRecipes
} from "../controllers/RecipeController.js";


=======
  getLatestRecipes,
} from "../controllers/recipeController.js";
>>>>>>> 6d153188f3b602da2143205c26a5dfd068b24bfd

import {
  updateRecipeSchema,
  idSchema,
  createRecipeSchema,
  createValidationMiddleWare,
} from "../validation/schemas.js";

export const router = Router();

router.get("/", controllerWrapper(getAll));

// Dernières recettes ajoutées
router.get("/latest", controllerWrapper(getLatestRecipes));

router.get(
  "/:id",
  createValidationMiddleWare(idSchema, "params"),
  controllerWrapper(getOne)
);

router.post(
  "/",
  createValidationMiddleWare(createRecipeSchema, "body"),
  controllerWrapper(createOne)
);

router.put(
  "/:id",
  createValidationMiddleWare(updateRecipeSchema, "body"),
  createValidationMiddleWare(idSchema, "params"),
  controllerWrapper(updateOne)
);

router.delete(
  "/:id",
  createValidationMiddleWare(idSchema, "params"),
  createValidationMiddleWare(idSchema, "params"),
  controllerWrapper(deleteOne)
);
