const express = require("express");
const pool = require("./connection");
const routes = express.Router();

//// get all questions
routes.get("/questions", (req, res) => {
  const sql = "SELECT * FROM questions ORDER BY ID asc";
  pool.query(sql).then(result => {
    res.json(result.rows);
  });
});

//// get question by id
routes.get("/questions/:id", (req, res) => {
  const id = req.params.id;
  const sql = `SELECT * FROM questions WHERE id=${id}`;
  pool.query(sql).then(result => {
    res.json(result.rows);
  });
});

//// get random question
// routes.get("/questions/random", (req, res) => {
//   const id = Math.floor(Math.random() * 5) + 1;
//   const sql = "SELECT * FROM questions where id=$1::INT";
//   const params = [id];
//   pool.query(sql, params).then(result => {
//     res.json(result.rows[0]);
//   });
// });

//// add one to rating of chosen question
routes.put("/rating1/:id", (req, res) => {
  const id = parseInt(req.params.id);
  const sql = `UPDATE questions SET rating = rating + 1 WHERE id=${id}`;
  pool.query(sql).then(result => {
    res.json(result.row);
  });
});

////add one to rating of chosen question
routes.put("/rating2/:id", (req, res) => {
  const id = parseInt(req.params.id);
  const sql = `UPDATE questions SET rating2 = rating2 + 1 WHERE id=${id}`;
  pool.query(sql).then(result => {
    res.json(result.row);
  });
});

//// get rating1 score
routes.get("/ratingnum1/:id", (req, res) => {
  const id = req.params.id;
  const sql = `SELECT rating FROM questions WHERE id=${id}`;
  pool.query(sql).then(result => {
    if (result.rows.length === 0) {
      res.status(404);
      res.send("Not found, ID: " + id);
    } else {
      res.json(result.rows[0].rating);
    }
  });
});

//// get rating2 score
routes.get("/ratingnum2/:id", (req, res) => {
  const id = req.params.id;
  const sql = `SELECT rating2 FROM questions WHERE id=${id}`;
  pool.query(sql).then(result => {
    if (result.rows.length === 0) {
      res.status(404);
      res.send("Not found, ID: " + id);
    } else {
      res.json(result.rows[0].rating2);
    }
  });
});

//// Logs new player into players Table
routes.post("/add-player", (req, res) => {
  const player = req.body;
  let sql =
    "INSERT INTO players (playername, playerimage, playerscore) VALUES ($1::text,$2::text, $3::int) RETURNING *";
  let params = [player.playerName, player.playerImage, player.playerScore];
  pool.query(sql, params).then(result => {
    res.status(201);
    res.json(result.rows);
  });
});

//// gets all players
routes.get("/players", (req, res) => {
  const sql = "SELECT * FROM players ORDER BY playerscore desc";
  pool.query(sql).then(result => {
    res.json(result.rows);
  });
});

//// gets average of player points
routes.get("/avg-score", (req, res) => {
  const sql = "SELECT AVG(playerscore) FROM players";
  pool.query(sql).then(result => {
    res.json(result.rows);
  });
});

//// adds new question

routes.post("/add-question", (req, res) => {
  const question = req.body;
  let sql =
    "INSERT INTO questions (scenario, scenario2, rating, rating2) VALUES($1::text, $2::text, $3::int, $4::int) RETURNING *";
  let params = [question.scenario, question.scenario2, 1, 1];
  pool.query(sql, params).then(result => {
    res.status(201);
    res.json(result.rows);
  });
});

module.exports = routes;
