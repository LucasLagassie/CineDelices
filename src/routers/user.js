import { Router } from "express";
import { getUser, editUser, deleteUser, createRecipe, deleteRecipe, editRecipe } from "../controllers/userController.js";
import { controllerWrapper } from "../controllers/controllerWrapper.js";

export const router = Router();

//Get user
router.get('/:id', controllerWrapper(getUser));
//Edit user
router.post('/:id', controllerWrapper(editUser));
//Delete user
router.delete('/:id', controllerWrapper(deleteUser));
//Create recipe
router.post('/recipes', controllerWrapper(createRecipe));
//Delete recipe
router.delete('/recipes/:id', controllerWrapper(deleteRecipe));
//Edit recipe
router.put('/recipes/:id', controllerWrapper(editRecipe))