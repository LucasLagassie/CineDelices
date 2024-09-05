import { Router } from "express";
import { router as userRouter } from "./user.js";
import { router as moviesSeriesRouter } from "./moviesSeries.js";
import { router as recipeRouter } from "./Recipe.js";

import { errorHandler } from "../middlewares/errorHandler.js";
import { notFound } from "../middlewares/notFound.js";

export const router = Router();

router.use("/users", userRouter);
router.use("/moviesSeries", moviesSeriesRouter);
router.use("/recipes", recipeRouter);

router.use(errorHandler);
router.use(notFound);
