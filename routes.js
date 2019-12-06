const express = require("express");
const pool = require("./connection");
const routes = express.Router();

routes.get("/questions", (req, res) => {
  const sql = "SELECT * FROM questions";
  pool.query(sql).then(result => {
    res.json(result.rows);
  });
});

routes.get("/questions/random", (req, res) => {
  const id = Math.floor(Math.random() * 5) + 1;
  const sql = "SELECT * FROM questions where id=$1::INT";
  const params = [id];
  pool.query(sql, params).then(result => {
    res.json(result.rows[0]);
  });
});

module.exports = routes;
