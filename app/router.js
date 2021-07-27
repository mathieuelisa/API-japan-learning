const express = require("express");

const cardController = require("./controllers/cardController");

const router = express.Router();

router.get("/cards", cardController.getAllCards);

router.use((req, res) => {
  res.status(400).send("Service doesnt exists");
});

module.exports = router;
