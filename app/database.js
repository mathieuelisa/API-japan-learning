const { Sequelize } = require("sequelize");

// if (process.env.NODE_ENV === "production") {
//   // config pour la version de prod heroku
//   config.ssl = {
//     rejectUnauthorized: false,
//   };
// }

const config = {
  define: {
    timestamps: false,
    underscored: false,
  },
  logging: false,
};

if (process.env.NODE_ENV === `production`) {
  config.dialectOptions = {
    ssl: {
      rejectUnauthorized: false,
    },
  };
}

const sequelize = new Sequelize(process.env.DATABASE_URL, config);

module.exports = sequelize;
