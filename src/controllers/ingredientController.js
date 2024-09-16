import { Ingredient } from "../models/ingredient.js";

export const getAll = async (req, res) => {
  const ingredients = await Ingredient.findAll();
  return res.json(ingredients);
};
