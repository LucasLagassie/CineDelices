import jsonwebtoken from 'jsonwebtoken';

export const cookiejwtAuth = (req, res, next) => {
    console.log('Middleware d\'authentification atteint');
    const token = req.cookies.token;

    if(!token) {
        return res.status(401).json({message: "Accès refusé. Utilisateur non authentifié"});
    }
    
    try {
        const decoded = jsonwebtoken.verify(token, process.env.JWT_SECRET);
        req.user = decoded;
        console.log('Authentificationn verifié');
        next();
    } catch (error) {
        console.error("Erreur de validation du token JWT:", error);
        return res.status(401).json({message: "token invalide"});
    
    };

}

