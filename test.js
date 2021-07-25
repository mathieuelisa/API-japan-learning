require("dotenv").config();
const { Card, List } = require("./app/models");

Array.prototype.toJson = function () {
  return this.map((data) => data.toJSON());
};

const getAllCards = async () => {
  try {
    const cards = await Card.findAll();
    console.log(cards.toJson());
  } catch (err) {
    console.log(err);
  }
};

getAllCards();
