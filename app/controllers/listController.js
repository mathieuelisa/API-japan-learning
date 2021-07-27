const { List } = require("../models/index");

const listController = {
  getAllList: async (req, res) => {
    try {
      const lists = await List.findAll();
      res.json(lists);
    } catch (err) {
      res.status(500).json({ err: "You couldn't recover all of your lists" });
    }
  },
};

module.exports = listController;
