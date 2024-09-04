import "dotenv/config";
import express from "express";
import cors from "cors";
import { router } from "./src/routers/index.js";
import dotenv from "dotenv";

const port = process.env.PORT || 3000;

export const app = express();

app.use(cors({origin: process.env.ALLOWED_DOMAINS}));

app.use(express.json());

app.use(router);

app.listen(port, () => {
    console.log(`Server listening on port ${port}`);
})