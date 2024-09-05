import { Router } from "express";
import { router as userRouter } from "./user.js";
import { router as moviesSeriesRouter } from "./moviesSeries.js";
import { router as recipeRouter } from "./Recipe.js";

export const router = Router();

router.use("/user", userRouter);
router.use("/moviesSeries", moviesSeriesRouter);
router.use("/recipes", recipeRouter);
