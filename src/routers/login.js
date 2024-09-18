import { Router } from "express";
import login from "../controllers/loginController.js";
import { createValidationMiddleWare } from "../validation/schemas.js";
import { controllerWrapper } from "../controllers/controllerWrapper.js";

export const router = Router();

router.post("/", controllerWrapper(login));
