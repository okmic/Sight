

const db = require('./../settings/db.js')
const response = require('./../response.js')

exports.all = (req, res) => {
     db.query('SELECT * FROM `data`', (error, rows, fields) => {
        if (error) {
            console.log('error')
         } else {
            response.status(rows, res)
         }
    })
}
