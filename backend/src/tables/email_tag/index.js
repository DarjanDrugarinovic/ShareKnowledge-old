const db = require("../../tools/db")
let sql;

const table = {
    insert: async (emailId, tagId) => {
        sql =`INSERT INTO email_tag (emailId, tagId) `
        sql+=`VALUES ('${emailId}','${tagId}'); `

        return await db(sql)
    },

    deleteById: async (emailId) => {
        sql =`DELETE FROM email_tag WHERE emailId = '${emailId}';`

        return await db(sql)
    },

    getByEmailId: async (emailId) => {
        sql =`SELECT * from email_tag WHERE emailId='${emailId}';`

        return await db(sql)
    }, 

    get_emails_with_required_tags: async (tags) => {
          // SELECT *
        // FROM (  SELECT emailId, COUNT(*) AS tags_count
        //         FROM email_tag 
        //         WHERE tagId in ('1','2', '4')
        //         GROUP BY emailId
        //       ) as emails_with_required_tags
        // WHERE tags_count=3

        let innerSQL;
        innerSQL = `SELECT emailId, COUNT(*) AS tags_count `
        innerSQL += `FROM email_tag `
        innerSQL += `WHERE tagId in ('${tags[0]}'`
        for(let i=1; i<tags.length; i++){
            innerSQL+=`,'${tags[i]}'`
        }
        innerSQL += `) `
        innerSQL += `GROUP BY emailId ` 

        sql = `SELECT emailId `
        sql +=`FROM ( ${innerSQL} ) AS emails_with_required_tags `
        sql +=`WHERE tags_count=${tags.length}`

        return await db(sql)
    },
}

module.exports = table