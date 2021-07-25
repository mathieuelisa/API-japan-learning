const List = require("./list");
const Card = require("./card");

List.hasMany(Card, {
  as: "cards",
  foreignKey: "list_id",
  onUpdate: false,
});

Card.belongsTo(List, {
  as: "list",
  foreignKey: "list_id",
  onUpdate: false,
});

module.exports = { List, Card };
