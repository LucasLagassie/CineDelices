import { User } from "../models/user.js";
import { HTTPError } from "../errors/httpError.js";
import { notFound } from "../middlewares/notFound.js";
import { errorHandler } from "../middlewares/errorHandler.js";

export const getAllUsers = async (req, res) => {
    const users = await User.findAll({
    include: [
        {
            association: "recipe", 
            through: { attributes: [] },
        },
        {
            association: "movie_and_serie", 
            through: { attributes: [] },
        },
    ],
});
return res.json(users);
}


export const getUser = async (req, res) => {
    const user = await User.findByPk(req.params.id, {
        include: [
            {
                association: "recipe",
                through: { attributes: [] },
            },
            {
                association: "movie_and_serie",
                through: { attributes: [] },
            },
        ],
    });

    if (!user) {
        throw new HTTPError(404, "Oups! Cet utilisateur semble manquer au scénario");
    }

    return res.json(user);
};

export const createUser = async (req, res) => {
    const user = await User.create(req.body);
    return res.status(201).json(user);
};

export const editUser = async (req, res) => {
    const user = await User.findByPk(req.params.id, {
        include: [
            {
                association: "recipe",
                through: { attributes: [] },
            },
            {
                association: "movie_and_series",
                through: { attributes: [] },
            },
        ],
    });

    if (!user) {
        throw new HTTPError(404, "Oups! Cet utilisateur semble manquer au scénario");
    }

    await user.update(req.body);
    return res.json(user);
};

export const deleteUser = async (req, res) => {
    const user = await User.findByPk(req.params.id);
    if (!user) {
        throw new HTTPError(404, "Oups! Cet utilisateur semble manquer au scénario");
    }
    await user.destroy();
    return res.status(204).end();
};

