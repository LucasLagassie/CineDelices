import "dotenv/config";
import express from "express";
import cors from "cors";
import { router } from "./src/routers/index.js";
import dotenv from "dotenv";
import { sequelize } from "./src/models/sequelize.js";
import session from "express-session";

const port = process.env.PORT || 3000;

export const app = express();

app.use(
  session( {
    secret: process.env.COOKIE_SECRET || "vWTw1mcYeMpEeCsExUCu0LY",
    resave: false,
    saveUninitialized: false,
  }),
)
 
app.use((req,res,next) => {
  if(req.session.user) {
    res.locasl.user = req.session.user;
  }
});

app.use(cors({origin: process.env.ALLOWED_DOMAINS}));


app.use(express.json());

app.use(router);

app.use(express.static("public"));

app.listen(port, () => {

    console.log(`Server listening on port ${port}`);
});

