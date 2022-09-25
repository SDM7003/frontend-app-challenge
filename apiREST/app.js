const express = require('express');
const connection = require('./dbConnection');
const app = express();
const cors=require('cors');
var session = require('express-session');
var bodyParser = require('body-parser');
const port = 3000;
app.use(cors());
app.use(express.json());


app.use(express.json());
// Handling Errors
app.use((err, req, res, next) => {
  // console.log(err);
  err.statusCode = err.statusCode || 500;
  err.message = err.message || "Internal Server Error";
  res.status(err.statusCode).json({
    message: err.message,
  });
});

/*------ Events View --------*/

//Get all cards
app.get('/cardList', (req, res) => {
  connection.query("SELECT `id`, `name`, `photo`, `small_desc`, `price` FROM cards",  function (error, events) {
    if (error) return res.status(500).send("Error of view cards");
    res.status(200).json(events);
  });
});

//Get card info
app.get("/card/:id", function (req, res) {
  var id = parseInt(req.params.id);
  connection.query("SELECT * FROM cards WHERE id = ?", [id], function (error, events) {
    if (error) return res.status(500).send("Error of view event");
    if (events.length == 0) return res.status(404).send("Error. Event don't find");
    res.status(200).json(events[0]);
  });
});

//Get all cards by manifactura
app.get('/cardList/:id', (req, res) => {
  var id = parseInt(req.params.id);
  connection.query("SELECT * FROM cards WHERE `cards`.`id`=?", [id], function (error, events) {
    if (error) return res.status(500).send("Error of view events");
    res.status(200).json(events);
  });
});

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
});

