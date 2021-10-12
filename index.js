require("dotenv").config();

const express = require("express");
const app = express();
const router = require("./app/router");
const cors = require("cors");

app.use(express.urlencoded({ extended: true }));
app.use(express.json());

app.use(cors("*"));
app.use(router);

app.get("/", (req, res) => {
  res.send("Hello world");
});

// app.listen(3000, () => {
//   console.log(`Server started`);
// });

app.listen(process.env.PORT, () => {
  console.log(`Server started`);
});
