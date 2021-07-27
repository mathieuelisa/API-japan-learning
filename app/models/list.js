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
    timestamps: false,
  }
);

module.exports = List;
