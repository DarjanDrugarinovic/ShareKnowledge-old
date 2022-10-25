const db = require("../../tools/db")
let sql;

const table = {
    insert: async (adress) => {
        sql =`INSERT INTO email (address) `
        sql+=`VALUES ('${adress}'); `

        return await db(sql)
    },

    update: async (id, adress) => {
        sql =`UPDATE email `
        sql+=`SET `
        sql+=   `address='${adress}' `
        sql+=`WHERE id='${id}'`

        return await db(sql)
    },

    deleteById: async (id) => {
        sql =`DELETE FROM email WHERE id='${id}'`

        return await db(sql)
    },

    getAll: async () => {
        sql =`SELECT * from email`

        return await db(sql)
    },

    getById: async (id) => {
        sql =`SELECT * from email WHERE id='${id}'`

        return await db(sql)
    },

}

module.exports = table