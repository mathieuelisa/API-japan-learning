const Sequelize = require("sequelize");
const sequelize = require("../database");

class Card extends Sequelize.Model {}

Card.init(
  {
    name_FR: Sequelize.TEXT,
    name_EN: Sequelize.TEXT,
    name_JP: Sequelize.TEXT,
  },
  {
    sequelize,
    tableName: "card",
    timestamps: false,
  }
);

module.exports = Card;
