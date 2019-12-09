const express = require("express");
const pool = require("./connection");
const routes = express.Router();

routes.get("/questions", (req, res) => {
  const sql = "SELECT * FROM questions ORDER BY ID asc";
  pool.query(sql).then(result => {
    res.json(result.rows);
  });
});

routes.get("/questions/:id", (req, res) => {
  const id = req.params.id;
  const sql = `SELECT * FROM questions WHERE id=${id}`;
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

routes.put("/rating1/:id", (req, res) => {
  const id = parseInt(req.params.id);
  const sql = `UPDATE questions SET rating = rating + 1 WHERE id=${id}`;
  pool.query(sql).then(result => {
    res.json(result.row);
  });
});

////Ratings
routes.put("/rating2/:id", (req, res) => {
  const id = parseInt(req.params.id);
  const sql = `UPDATE questions SET rating2 = rating2 + 1 WHERE id=${id}`;
  pool.query(sql).then(result => {
    res.json(result.row);
  });
});

module.exports = routes;
