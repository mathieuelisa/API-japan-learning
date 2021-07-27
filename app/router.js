const express = require("express");

const cardController = require("./controllers/cardController");
const listController = require("./controllers/listController");

const router = express.Router();

// CARDS
router.get("/cards", cardController.getAllCards);
router.get("/cards/:id", cardController.getCardByPk);

//LISTS
router.get("/lists", listController.getAllList);

router.use((req, res) => {
  res.status(400).send("Service doesnt exists");
});

module.exports = router;
