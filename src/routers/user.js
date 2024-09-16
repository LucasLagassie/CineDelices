import { Router } from "express";
import { controllerWrapper } from "../controllers/controllerWrapper.js";
import {
  getUser,
  editUser,
  deleteUser,
  createRecipe,
  deleteRecipe,
  editRecipe,
} from "../controllers/userController.js";
import {
  idSchema,
  updateUserSchema,
  createUserSchema,
  createRecipeSchema,
  updateRecipeSchema,
  createValidationMiddleWare,
} from "../validation/schemas.js";

export const router = Router();

//Get user
router.get(
  "/:id",
  createValidationMiddleWare(idSchema, "params"),
  controllerWrapper(getUser)
);

//Edit user
router.post(
  "/:id",
  createValidationMiddleWare(idSchema, "params"),
  createValidationMiddleWare(createUserSchema, "body"),
  controllerWrapper(editUser)
);
//Delete user
router.delete(
  "/:id",
  createValidationMiddleWare(idSchema, "params"),
  controllerWrapper(deleteUser)
);
//Create recipe
router.post(
  "/recipe",
  createValidationMiddleWare(createRecipeSchema, "body"),
  controllerWrapper(createRecipe)
);
//Delete recipe
router.delete(
  "/recipe/:id",
  createValidationMiddleWare(idSchema, "params"),
  controllerWrapper(deleteRecipe)
);
//Edit recipe
router.put(
  "/recipe/:id",
  createValidationMiddleWare(idSchema, "params"),
  createValidationMiddleWare(updateRecipeSchema, "body"),
  controllerWrapper(editRecipe)
);
