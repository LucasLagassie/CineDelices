import { Router } from "express";
import { controllerWrapper } from "../controllers/controllerWrapper.js";
import {
  getAll,
  getOne,
  createOne,
  updateOne,
  deleteOne,
} from "../controllers/recipeController.js";
import {
  updateRecipeSchema,
  idSchema,
  createRecipeSchema,
  createValidationMiddleWare,
} from "../validation/schemas.js";

export const router = Router();

router.get("/", controllerWrapper(getAll));

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
