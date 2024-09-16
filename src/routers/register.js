import { Router } from "express";
import { register } from "../controllers/registerController.js";
import {
  createValidationMiddleWare,
  createUserSchema,
} from "../validation/schemas.js";
import { controllerWrapper } from "../controllers/controllerWrapper.js";

export const router = Router();

router.post(
  "/",
  createValidationMiddleWare(createUserSchema, "body"),
  controllerWrapper(register)
);
