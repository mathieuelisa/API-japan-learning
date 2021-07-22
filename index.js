const express = require("express");
const app = express();

app.use(express.urlencoded({ extended: true }));
app.use(express.json());

app.use(router);

app.get("/", (req, res) => {
  res.send("Hello world");
});

app.listen(3000, () => {
  console.log(`Server started`);
});
