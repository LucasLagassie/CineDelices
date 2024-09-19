import { Sequelize } from "sequelize";

// on récupérer les variables nécessaires
const { PGUSER, PGPASSWORD, PGHOST, PGPORT, PGDATABASE } = process.env;

// on construit l'url de connexion
const databaseURL = `postgres://${PGUSER}:${PGPASSWORD}@${PGHOST}:${PGPORT}/${PGDATABASE}`;

// on crée l'instance (une instance c'est juste un objet, fabriqué par une classe) de sequelize
export const sequelize = new Sequelize(databaseURL, {
  define: {
    underscored: true,
  },
  logging: false,
});

try {
  await sequelize.authenticate();
  console.log("📚 Sequelize connected");
} catch (error) {
  console.error("❌ Sequelize can't connect to database");
  console.error(error);
}
