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

// getAllCards();

const getCardById = async (id) => {
  try {
    const card = await Card.findByPk(id);
    console.log(card);
  } catch (err) {
    console.log(err);
  }
};

// getCardById(6);

const getList = async () => {
  try {
    const list = await List.findAll();
    console.log(list.toJson());
  } catch (error) {
    console.log(error);
  }
};

// getList();

const getListById = async (id) => {
  try {
    const list = await List.findByPk(id);
    console.log(list);
  } catch (error) {
    console.log(error);
  }
};

// getListById(2);

const getCardsinList = async () => {
  try {
    const cardsInList = await Card.findAll({
      where: {
        list_id: 1,
      },
    });
    console.log(cardsInList.toJson());
  } catch (error) {
    console.log(error);
  }
};

// getCardsinList();

const createCard = async () => {
  try {
    const newCard = new Card({
      name_FR: "test_FR",
      name_EN: "test_EN",
      name_JP: "test_JP",
      list_id: 1,
    });

    await newCard.save();
    console.log(newCard);
  } catch (error) {
    console.log(error);
  }
};

// createCard();

const createList = async () => {
  try {
    const newList = new List({
      name: "Animaux",
    });
    await newList.save();
    console.log(newList);
  } catch (error) {
    console.log(error);
  }
};

// createList();

const deletedList = async (id) => {
  try {
    const deleteList = await List.findByPk(id);
    await deleteList.destroy();
    console.log("Your list have been deleted with success");
  } catch (error) {
    console.log();
  }
};

// deletedList(5);

const deleteCard = async (id) => {
  try {
    const deleteCard = await Card.findByPk(id);
    await deleteCard.destroy();
    console.log("Your card have been deleted");
  } catch (error) {
    console.log(error);
  }
};

// deleteCard(10);
