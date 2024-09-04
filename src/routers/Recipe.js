import { Router } from "express";
import { getAll, getOne, createOne, modifyOne, deleteOne} from "../controllers/RecipeController.js";
import { controllerWrapper } from "../controllers/controllerWrapper.js";

export const router = Router();

router.get("/", controllerWrapper(getAll));
router.get('/:id', controllerWrapper(getOne));
router.post('/', controllerWrapper(createOne));
router.put('/:id', controllerWrapper(modifyOne));
router.delete('/:id', controllerWrapper(deleteOne));


