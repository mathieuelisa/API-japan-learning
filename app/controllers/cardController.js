const { Card } = require("../models/index");

const cardController = {
  getAllCards: async (req, res) => {
    try {
      const cards = await Card.findAll();
      res.json(cards);
    } catch (err) {
      res.status(500).json({ err: "You couldn't recover all of your cards" });
    }
  },
};

module.exports = cardController;
