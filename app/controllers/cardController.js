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

  getCardByPk: async (req, res) => {
    try {
      const card = await Card.findByPk(req.params.id);
      res.json(card);
    } catch (err) {
      res.status(500).json({ err: "You couldn't recover your card" });
    }
  },
};

module.exports = cardController;
