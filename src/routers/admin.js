import {Router} from 'express';
import {controllerWrapper} from "../controllers/controllerWrapper.js";
import { adminController } from '../controllers/adminController.js';


export const router = Router();

//Get all the users 
router.get('/users', controllerWrapper(adminController.getAllUsers));

router.get('/:id', controllerWrapper(adminController.getUser));
//delete an user 
router.delete('/users/:id', controllerWrapper(adminController.deleteUsers));
//get all the recipes
router.get('/recipes', controllerWrapper(adminController.getAllRecipes));
//create a recipe
router.post('/recipes', controllerWrapper(adminController.createRecipe));
//edit a recipe
router.put('/recipes/:id', controllerWrapper(adminController.editRecipe));
//delete a recipe
router.delete('/recipes/:id', controllerWrapper(adminController.deleteRecipe));
//get all the movies and series
router.get('/moviesSeries', controllerWrapper(adminController.getAllMoviesAndSeriesCategory));
//create a movies and series category
router.post('/moviesSeries', controllerWrapper(adminController.createMoviesAndSeriesCategory));
//edit a movies and series category
router.put('/moviesSeries/:id', controllerWrapper(adminController.editMoviesAndSeriesCategory));
// delete a movies and series category
router.delete('/moviesSeries/:id', controllerWrapper(adminController.deleteMoviesAndSeriesCategory));