const connection = require("../config/database");

const db = (sql) => {
  return new Promise((resolve, reject) => {
    connection.query(sql, (err, rows) => {
      if (err) {
        console.log("problem u radu sa bazom");
        console.log(err);

        return reject(err);
      }

      //kad nema nista vraca prazan niz
      resolve(JSON.parse(JSON.stringify(rows)));
    });
  });
};

module.exports = db;
