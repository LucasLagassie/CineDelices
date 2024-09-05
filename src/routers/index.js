import { Router } from "express";
import jsonwebtoken from "jsonwebtoken"; // Import JWT library for generating tokens
import { router as userRouter } from "./user.js";
import { router as moviesSeriesRouter } from "./moviesSeries.js";
import { router as recipeRouter } from "./Recipe.js";
import login from "../controllers/maincontroller.js";

// Authorization middleware for protecting routes
const authorizationMiddleware = (req, res, next) => {
  const token = req.headers.authorization?.split(" ")[1];
  if (!token) {
    return res.status(401).json({ message: "Token manquant..." });
  }
  try {
    const decoded = jsonwebtoken.verify(token, process.env.JWT_SECRET);
    req.user = decoded;
    next();
  } catch (err) {
    return res.status(401).json({ message: "Token invalide..." });
  }
};

export const router = Router();

router.post("/login", login);
router.use(authorizationMiddleware);

router.use("/user", userRouter);
router.use("/moviesSeries", moviesSeriesRouter);
router.use("/recipe", recipeRouter);
