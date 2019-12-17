// const { Pool } = require("pg");
// const credentials = new Pool({
//   user: "postgres",
//   password: "password", // your password
//   host: "localhost",
//   port: 5432,
//   database: "WouldURather", // select your database
//   ssl: false
// });
// module.exports = credentials;

const { Pool } = require("pg");
try {
  // When not running via Heroku, this will load the .env file.
  require("dotenv").config();
} catch (e) {
  // When running with Heroku, dotenv doesn't need to be available.
}
const connectionString = process.env.DATABASE_URL;
const pool = new Pool({
  connectionString: connectionString,
  ssl: !connectionString.includes("localhost")
});
module.exports = pool;
