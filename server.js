const express = require("express");
const cors = require("cors");
const routes = require("./routes");
const app = express();
app.use(express.json());
app.use(cors());
app.use("/", routes);

// define the port
const DEFAULT_PORT = 3003;
// Use Heroku's PORT or default to 3000.
const port = process.env.PORT || DEFAULT_PORT;
// run the server
app.listen(port, () => console.log(`Listening on port: ${port}.`));
