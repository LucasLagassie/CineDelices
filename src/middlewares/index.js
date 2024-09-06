export const middlewares = {
    isConnected(req, res, next) {
        if(req.session.user) {
            return next();
        }
    },

    isAdmin(req, res, next) {
        if(req.session.user.role === 'admin') {
            return next();
        }
        response.status(401).render('error', {
            error: {
                statusCode: 401,
                message: 'Vous n\'êtes pas autoriséà accéder à cette page'
            }
        })
    }
}

