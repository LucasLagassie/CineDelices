import { Router } from "express";
import { getAllUsers, getUser, createUser, editUser, deleteUser } from "../controllers/userController.js";
import { controllerWrapper } from "../controllers/controllerWrapper.js";

export const router = Router();

router.get('/', controllerWrapper(getAllUsers));
router.get('/:id', controllerWrapper(getUser));
router.post('/', controllerWrapper(createUser));
router.post('/:id', controllerWrapper(editUser));
router.delete('/:id', controllerWrapper(deleteUser));
