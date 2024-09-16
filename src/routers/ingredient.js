import { Router } from "express";
import { controllerWrapper } from "../controllers/controllerWrapper.js";
import { getAll } from "../controllers/ingredient.js";

export const router = Router();

router.get("/", controllerWrapper(getAll));
