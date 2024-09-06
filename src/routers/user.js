import { Router } from "express";
import { getUser, editUser, deleteUser } from "../controllers/userController.js";
import { controllerWrapper } from "../controllers/controllerWrapper.js";

export const router = Router();


router.get('/:id', controllerWrapper(getUser));
router.post('/:id', controllerWrapper(editUser));
router.delete('/:id', controllerWrapper(deleteUser));
