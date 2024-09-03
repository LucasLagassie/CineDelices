export const errorHandler = (error, _, res,__) => {
    if(error.statuscode){
        return res.status(error.statusCode).json({ error: error.message});
    }
    res.status(500).json({ 
        error: error.message || "Erreur serveur. Veuillez réessayer plus tard !",
});
};