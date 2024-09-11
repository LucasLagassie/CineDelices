import bcrypt from "bcryptjs"; // Import bcrypt for password hashing
import emailValidator from "email-validator"; // Import email-validator to validate email formats
import { User } from "../models/user.js"; // Sequelize User model
import dotenv from "dotenv"; // Import dotenv to load environment variables
import jsonwebtoken from "jsonwebtoken"; // Import JWT library for generating tokens

// Load environment variables from .env file
dotenv.config();

// Register function to create new users
export default async function register(req, res) {
  const { pseudo, email, password, confirmPassword } = req.body; // Extract data from request body

  // Validate email format
  if (!emailValidator.validate(email)) {
    return res.status(400).json({ message: "Format email invalide..." });
  }

  // Check if the passwords match
  if (password !== confirmPassword) {
    return res.status(400).json({ message: "Mot de passe incorrecte..." });
  }

  try {
    // Check if the user already exists
    const existingUser = await User.findOne({ where: { email } });

    if (existingUser) {
      return res.status(400).json({ message: "L'utilisateur existe déjà..." });
    }

    // Hash the password before saving it in the database
    const hashedPassword = await bcrypt.hash(password, 10);

    // Create a new user
    const newUser = await User.create({
      pseudo,
      email,
      password: hashedPassword,
    });

    // Generate a JWT to automatically log the user in after registration
    const token = jsonwebtoken.sign(
      { userId: newUser.id },
      process.env.JWT_SECRET,
      { expiresIn: "72h" } // Expires in 72 hours
    );

    // Return the user info and token
    res.status(201).json({
      message: "L'utilisateur a bien été créé !",
      token,
      user: {
        id: newUser.id,
        pseudo: newUser.pseudo,
        email: newUser.email,
        defaultValue: 'user'
      },
    });
  } catch (err) {
    console.error("Erreur inscription...", err);
    res.status(500).json({ message: "Erreur serveur..." });
  }
}
