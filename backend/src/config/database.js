const mysql = require("mysql2");

const connection = mysql.createPool({
  host: "localhost",
  port: "3306",
  user: "root",
  password: "1234",
  database: "share_knowledge",
});

module.exports = connection;
