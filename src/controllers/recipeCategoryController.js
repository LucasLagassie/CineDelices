import { RecipeCategory} from "../models/recipeCategory.js";

export const getAll = async (req, res) => {
  const recipeCategory = await RecipeCategory.findAll()
  return res.json(recipeCategory);
};
