const { List } = require("../models/index");

const listController = {
  getAll: async (req, res) => {
    try {
      const lists = await List.findAll();
      res.json(lists);
    } catch (err) {
      res.status(500).json({ err: "You couldn't recover all of your lists" });
    }
  },

  getOne: async (req, res) => {
    try {
      const list = await List.findByPk(req.params.id);
      res.json(list);
    } catch (err) {
      res.status(500).json({ err: "You couldn't recover your list" });
    }
  },
};

module.exports = listController;
