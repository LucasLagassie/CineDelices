import bcrypt from "bcryptjs"; // Import bcrypt for password hashing
import emailValidator from "email-validator"; // Import email-validator to validate email formats
import { User } from "../models/user.js"; // Sequelize User model
import dotenv from "dotenv"; // Import dotenv to load environment variables
import jsonwebtoken from "jsonwebtoken"; // Import JWT library for generating tokens

// Load environment variables from .env file
dotenv.config();


const saltRounds = 10;

const passwordPlainUser = "hashed_password1";
const passwordPlainAdmin = "hashed_password_admin";

const hashPassword = async (password) => {
  const hash = await bcrypt.hash(password, saltRounds);
  console.log(hash);
}

hashPassword(passwordPlainUser);
hashPassword(passwordPlainAdmin);





// Login function to authenticate users and generate JWT tokens
export default async function login(req, res) {
  const { email, password } = req.body; // Extract email and password from request body

  // Validate the email format
  if (!emailValidator.validate(email)) {
    return res.status(400).json({ message: "Format email invalide..." });
  }

  try {
    // Search for the user in the database using Sequelize
    const user = await User.findOne({ where: { email } });
    console.log(user);
    // If no user found, return a 401 Unauthorized response
    if (!user) {
      return res.status(401).json({ message: "Utilisateur non trouvé..." });
    }

    // Check if the password is correct by comparing with the hashed password stored in DB
    const isPasswordValid = await bcrypt.compare(password, user.password);
    if (!isPasswordValid) {
      return res.status(401).json({ message: "Mot de passe incorrecte..." });
    }

    // Generate JWT token with the user ID and other info
    const token = jsonwebtoken.sign(
      { userId: user.id },
      process.env.JWT_SECRET,
      {
        expiresIn: "72h",
      }
    );

    // Send the token and user info back to the client
    res.json({
      logged: true,
      token, // JWT token
      user: {
        id: user.id,
        pseudo: user.pseudo,
        email: user.email,
        role: user.role,
      },
    });
  } catch (err) {
    // Handle server errors
    console.error("Erreur de connexion...:", err);
    res.status(500).json({ message: "Erreur serveur..." });
  }
}

