

const db = require('./../settings/db.js')
const path = require('path')

exports.all = async (req, res) => {
   try {
      const data = await db.get('select * from data')

      res.render('index', {title: 'Кчр', active: 'download', data})
   } catch (e) {
      console.error(e)
   }
}

exports.new = async (req, res) => {
   res.render('new',  {title: 'Кчр', active: 'download'})
}

exports.create = async (req, res) => {
   const {name, title} = req.body
   db.send("INSERT INTO `data` (`id`, `title`, `body`, `imgSrc`, `date`) VALUES " + `(NULL, "${name}", "${title}", 'cxzcxz', CURRENT_TIMESTAMP);`)
   
   res.redirect('/')

}

exports.download = (req, res) => {
   res.download(path.resolve(__dirname, '..', 'app.js'))
   console.log(req.requestTime)
}

