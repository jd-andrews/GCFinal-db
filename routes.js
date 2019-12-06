const express = require("express");
const pool = require("./connection");
const routes = express.Router();

routes.get("/questions", (req, res) => {
  let sql = "SELECT * FROM questions";
  pool.query(sql).then(result => {
    res.json(result.rows);
  });
});

module.exports = routes;
