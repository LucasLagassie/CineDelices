import { Router } from "express";
import { controllerWrapper } from "../controllers/controllerWrapper.js";
import { getAll, getOne } from "../controllers/movieAndSerieController.js";
import { idSchema, createValidationMiddleWare } from "../validation/schemas.js";

export const router = Router();

router.get("/", controllerWrapper(getAll));

router.get(
  "/:id",
  createValidationMiddleWare(idSchema, "params"),
  controllerWrapper(getOne)
);
