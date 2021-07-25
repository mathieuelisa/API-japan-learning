const List = require("./list");
const Card = require("./card");

List.hasMany(Card, {
  as: "cards",
  foreignKey: "list_id",
});

Card.belongsTo(List, {
  as: "list",
  foreignKey: "list_id",
});

module.exports = {
  list,
  card,
};
