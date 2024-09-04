import {Router} from "express";
import {getAll, getOne} from "../controllers/movieAndSerieController.js";
import {controllerWrapper} from "../controllers/controllerWrapper.js";

export const router = Router();

router.get("/", controllerWrapper(getAll));
router.get("/:id", controllerWrapper(getOne));
