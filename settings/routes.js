
module.exports = (app) => {
    const indexControler = require('./../Controler/indexControler.js')

    app.route('/').get(indexControler.all)
    app.route('/new').get(indexControler.new)
    app.route('/new/create').post(indexControler.create)
    app.route('/random').get(indexControler.random)
    app.route('/place/:id').get(indexControler.onePlace)
    app.route('/new/create-review').post(indexControler.createReview)
    app.route('/new/push-img').post(indexControler.pushImg)
}