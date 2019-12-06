const express = require("express");
const cors = require("cors");
const routes = require("./routes");
const app = express();
app.use(express.json());
app.use(cors());
app.use("/", routes);
const port = 3002;
app.listen(port, () => {
  console.log(`Express started. http://localhost:${port}`);
});
