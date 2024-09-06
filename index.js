import "dotenv/config";
import express from "express";
import cors from "cors";
import { router } from "./src/routers/index.js";
import {sequelize} from "./src/models/sequelize.js";

const port = process.env.PORT || 3000;

export const app = express();

sequelize.sync({ alter: true }) // Utilisez { force: true } si vous souhaitez réinitialiser les tables
  .then(() => console.log('Database & tables updated!'))
  .catch((error) => console.error('Error syncing database:', error));
  
app.use(cors({origin: process.env.ALLOWED_DOMAINS}));

app.use(express.json());

app.use(router);

app.use(express.static('public'));

app.listen(port, () => {
    console.log(`Server listening on port ${port}`);
});