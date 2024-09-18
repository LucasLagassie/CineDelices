import express from "express";
import { Router } from "express";
import jsonwebtoken from "jsonwebtoken"; // Import JWT library for generating tokens
import login from "../controllers/loginController.js";
import register from "../controllers/registerController.js";
import { router as userRouter } from "./user.js";
import { router as moviesSeriesRouter } from "./moviesSeries.js";
import { router as recipeRouter } from "./Recipe.js";
import { router as adminRouter } from "./admin.js";
import { router as ingredientRouter } from "./ingredient.js";
import { router as recipeCategoryRouter } from "./recipeCategory.js";
import { cookiejwtAuth } from "../middlewares/cookiejwtAuth.js";
import { errorHandler } from "../middlewares/errorHandler.js";
import { notFound } from "../middlewares/notFound.js";


// Authorization middleware for protecting routes

export const router = Router();

router.post("/login", login);
router.post("/register", register);
router.use("/moviesSeries", moviesSeriesRouter);
router.use("/recipes", recipeRouter);
router.use("/ingredients", ingredientRouter);
router.use("/recipeCategory", recipeCategoryRouter);
router.use(cookiejwtAuth);
router.use("/profile", userRouter);
router.use("/admin", adminRouter);

router.use(errorHandler);
router.use(notFound);
