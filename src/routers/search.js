import {Router} from "express";
import { searchAll } from '../controllers/searchController.js';
import {controllerWrapper} from "../controllers/controllerWrapper.js";

export const router = Router(); 

router.get('/', controllerWrapper(searchAll));