import express from 'express';
import { Router } from "express";
import {router as userRouter} from "./user.js";
import {router as moviesSeriesRouter} from "./moviesSeries.js";
import {router as recipeRouter} from "./Recipe.js";
import { notFound } from "../middlewares/notFound.js";
import { errorHandler } from "../middlewares/errorHandler.js";

export const router = Router();

const app = express();

router.use('/user', userRouter);
router.use('/moviesSeries', moviesSeriesRouter);
router.use('/recipes', recipeRouter);

app.use(notFound);
app.use(errorHandler);
