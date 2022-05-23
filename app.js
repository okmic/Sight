const express = require('express')
const path = require('path')
const app = express()
const bodyParser = require('body-parser')

app.set('view engine', 'ejs')
app.set('views', path.resolve(__dirname, 'templates'))

app.use(bodyParser.urlencoded({ extended: false }));

app.use(express.static(path.resolve(__dirname, 'static')))

const port = process.env.PORT ?? 5000

const routes = require('./settings/routes.js')
routes(app) 


app.listen(port, () => console.log(`Server listening on port ${port}`))