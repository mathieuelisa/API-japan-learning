const express = require("express");

const cardController = require("./controllers/cardController");
const listController = require("./controllers/listController");

const router = express.Router();

// CARDS
router.get("/api/cards", cardController.getAll);
router.get("/api/cards/:id", cardController.getOne);
router.get("/api/lists/:id/cards", cardController.getAllByListId);

//LISTS
router.get("/api/lists", listController.getAll);
router.get("/api/lists/:id", listController.getOne);

router.use((req, res) => {
  res.status(400).send("Service doesnt exists..");
});

module.exports = router;
