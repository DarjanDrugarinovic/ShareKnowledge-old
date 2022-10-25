const connection = require("../config/database");

const database = {
    query: (sql) => {
            return new Promise( ( resolve, reject ) => {
                connection.query( sql, ( err, rows) => {
                    if (err) return reject(err);
                        
                    //kad nema nista vraca prazan niz
                    resolve(JSON.parse(JSON.stringify(rows)));
                } );
            })
        },

}

module.exports = database