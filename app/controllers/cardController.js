const { Card } = require("../models/index");

const cardController = {
  getAll: async (req, res) => {
    // const headers = req.headers
    //   if (headers['Accept'] && headers['Accept'] === 'application/json') {
    //     res.json(data)
    //   } else {
    //     res.render('mavue')
    //   }
    try {
      const cards = await Card.findAll();
      res.json(cards);
    } catch (err) {
      res.status(500).json({ err: "You couldn't recover all of your cards" });
    }
  },

  getOne: async (req, res) => {
    try {
      const card = await Card.findByPk(req.params.id);
      res.json(card);
    } catch (err) {
      res.status(500).json({ err: "You couldn't recover your card" });
    }
  },

  getAllByListId: async (req, res) => {
    try {
      const listId = req.params.id;

      const card = await Card.findAll({
        where: {
          list_id: listId,
        },
      });
      res.json(card);
    } catch (err) {
      res
        .status(500)
        .json({
          err: "You couldn't recover all your cards from a specific list",
        });
    }
  },
};

module.exports = cardController;
