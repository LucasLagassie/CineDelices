import { Router } from "express";
import { controllerWrapper } from "../controllers/controllerWrapper.js";
import {
  getAll,
  getOne,
  createOne,
  updateOne,
  deleteOne,
<<<<<<< HEAD
} from "../controllers/RecipeController.js";
=======
  getLatestRecipes,
} from "../controllers/recipeController.js";
>>>>>>> cbfcfc0bed0131df905fa52b284bfcad323b1119
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
