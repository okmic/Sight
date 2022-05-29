

const db = require('./../settings/db.js')
const path = require('path')


exports.all = async (req, res) => {
   try {
      const data = await db.get('select * from data')

      res.render('index', {title: 'Кчр', active: 'main', data})
   } catch (e) {
      console.error(e)
   }
}

exports.new = async (req, res) => {
   res.render('new',  {title: 'Кчр', active: 'download'})
}

exports.create = async (req, res) => {

   if(!req.body) {
      res.redirect('/')
   } else if (req.files) {

      const file = req.files.file
      const fileName = Date.now() + file.name

      file.mv(path.join(__dirname, '..', 'static', 'img') + "/" + fileName, function(err) {
         if (err)
           return res.status(500).send(err);
     
           const {name, title} = req.body
      
           db.send("INSERT INTO `data` (`id`, `title`, `body`, `imgSrc`, `date`) VALUES " + `(NULL, "${name}", "${title}", "${'img/' + fileName}", CURRENT_TIMESTAMP);`)
           
           res.redirect('/')
       })} else {
      const {name, title} = req.body
      db.send("INSERT INTO `data` (`id`, `title`, `body`, `imgSrc`, `date`) VALUES " + `(NULL, "${name}", "${title}", 'img/no_image.jpg', CURRENT_TIMESTAMP);`)
      res.redirect('/')
   }
}

exports.onePlace  = async (req, res) => {
   const {id} = req.params
   
   const data = await db.get(`SELECT * FROM \`data\` WHERE \`id\` = ${id}`)
    res.render('place',  {title: 'Кчр', active: 'place', data}) 
}
