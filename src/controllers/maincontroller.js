import bcrypt from "bcryptjs"; // Import bcrypt for password hashing
import emailValidator from "email-validator"; // Import email-validator to validate email formats
import { User } from "../models/user.js"; // Sequelize User model
import dotenv from "dotenv"; // Import dotenv to load environment variables
import jsonwebtoken from "jsonwebtoken"; // Import JWT library for generating tokens

// Load environment variables from .env file
dotenv.config();

// 'Login' route that retrieves user information with JWT authorization
/* app.get("/login", authorizationMiddleware, async (req, res) => {
   try {
     const user = await User.findByPk(req.user.userId); // Get user by ID from JWT
     if (!user) {
       return res.status(404).json({ message: "Utilisateur non trouvÃ©..." });
    }
    res.json(user); // Send user data back to the client
  } catch (error) {
    res.status(500).json({ message: "Erreur serveur..." });
  }
}); */

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

    // If no user found, return a 401 Unauthorized response
    if (!user) {
      return res.status(401).json({ message: "Utilisateur non trouvÃ©..." });
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
    console.error("Erreur de login...:", err);
    res.status(500).json({ message: "Erreur serveur..." });
  }
}
