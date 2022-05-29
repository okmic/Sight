
module.exports = (app) => {
    const indexControler = require('./../Controler/indexControler.js')

    app.route('/').get(indexControler.all)
    app.route('/new').get(indexControler.new)
    app.route('/new/create').post(indexControler.create)
    app.route('/place/:id').get(indexControler.onePlace)
}