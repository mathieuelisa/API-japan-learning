const { Sequelize } = require("sequelize");

if (process.env.NODE_ENV === "production") {
  // config pour la version de prod heroku
  config.ssl = {
    rejectUnauthorized: false,
  };
}

const sequelize = new Sequelize(process.env.PG_URL, {
  define: {
    underscored: false,
  },
  logging: false,
});

module.exports = sequelize;
