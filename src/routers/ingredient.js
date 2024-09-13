import { Router } from "express";
import { getAll } from "../controllers/ingredient.js";
import { controllerWrapper } from "../controllers/controllerWrapper.js";

export const router = Router();

router.get("/", controllerWrapper(getAll));
