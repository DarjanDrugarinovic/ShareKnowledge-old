const express = require("express");
const router = express();
const cors = require("cors");
router.use(cors());
router.use("/files", express.static("./files"));
require("dotenv").config();

var bodyParser = require("body-parser");
router.use(bodyParser.json());

let myUrlLogger = require("./src/tools/myUrlLogger");
router.use(myUrlLogger);

require("./src/pages")(router);
require("./src/tools/fileManager")(router);
const server = require("./src/config/server");

const localHosting = () =>
  router.listen(server.port, () => {
    console.log(`Server je pokrenut!`);
  });
localHosting();

router.get("/hello", async (req, res) => {
  return res.json("hello world!");
});
