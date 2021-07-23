const Sequelize = require("sequelize");
const sequelize = require("../database");

class List extends Sequelize.Model {}

List.init(
  {
    name: Sequelize.TEXT,
  },
  {
    sequelize,
    tableName: "list",
  }
);

module.exports = List;
