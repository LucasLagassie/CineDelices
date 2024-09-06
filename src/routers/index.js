import express from 'express';
import { Router } from "express";

import {router as userRouter} from "./user.js";
import {router as moviesSeriesRouter} from "./moviesSeries.js";
import {router as recipeRouter} from "./Recipe.js";
import {router as adminRouter } from "./admin.js";
import { errorHandler } from "../middlewares/errorHandler.js";
import { notFound } from "../middlewares/notFound.js";

export const router = Router();

router.use("/profile", userRouter);
router.use("/moviesSeries", moviesSeriesRouter);
router.use("/recipes", recipeRouter);
router.use("/admin", adminRouter);

router.use(errorHandler);
router.use(notFound);

