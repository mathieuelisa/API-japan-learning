const express = require("express");

const cardController = require("./controllers/cardController");
const listController = require("./controllers/listController");

const router = express.Router();

// CARDS
router.get("/cards", cardController.getAll);
router.get("/cards/:id", cardController.getOne);

//LISTS
router.get("/lists", listController.getAll);
router.get("/lists/:id", listController.getOne);

router.use((req, res) => {
  res.status(400).send("Service doesnt exists..");
});

module.exports = router;
