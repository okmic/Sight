

const db = require('./../settings/db.js')
const path = require('path')


exports.all = async (req, res) => {
   try {
      const data = await db.get('select * from data')

      res.render('index', { title: 'Кчр', active: 'main', data })
   } catch (e) {
      console.error(e)
   }
}

exports.new = async (req, res) => {
   res.render('new', { title: 'Кчр', active: 'download' })
}

exports.create = async (req, res) => {

   if (!req.body) {
      res.redirect('/')
   } else if (req.files) {

      const file = req.files.file
      const fileName = Date.now() + file.name

      file.mv(path.join(__dirname, '..', 'static', 'img') + "/" + fileName, function (err) {
         if (err)
            return res.status(500).send(err);

         const { name, title, gps } = req.body

         db.send("INSERT INTO `data` (`id`, `title`, `body`, `imgSrc`, `date`, `mapSrc`, `gps`) VALUES " + `(NULL, "${name.replace(/['"«»]/g, '')}", "${title.replace(/['"«»]/g, '')}", "${'img/' + fileName.replace(/['"«»]/g, '')}", CURRENT_TIMESTAMP, NULL, "${gps.replace(/['"«»]/g, '')}");`)

         res.redirect('/')
      })
   } else {
      const { name, title, gps } = req.body
      db.send("INSERT INTO `data` (`id`, `title`, `body`, `imgSrc`, `date`, `mapSrc`, `gps`) VALUES " + `(NULL, "${name.replace(/['"«»]/g, '')}", "${title.replace(/['"«»]/g, '') + ' (на рассмотрении администратором)'}", 'img/no_image.jpg', CURRENT_TIMESTAMP, NULL, "${gps.replace(/['"«»]/g, '')}");`)
      res.redirect('/')
   }
}

exports.onePlace = async (req, res) => {
   const { id } = req.params

   const data = await db.get(`SELECT * FROM \`data\` WHERE \`id\` = ${id}`)

   const images = await db.get(`SELECT * FROM \`images\` WHERE \`ref_id\` = ${id}`)

   const reviews = await db.get(`SELECT * FROM \`reviews\` WHERE \`ref_id\` = ${id}`)

   res.render('place', { title: 'Кчр', active: 'place', data, images, reviews })
}

exports.createReview = async (req, res) => {
   if (!req.body || (req.name === '')) {
      return res.send("<h1>Поля не заполнены</h1>")
   }

   const { ref_id, name, comment, grade } = req.body

   db.send("INSERT INTO `reviews` (`id`, `ref_id`,`name`, `comment`, `grade`, `date`) VALUES " + `(NULL, "${ref_id}" , "${name}", "${comment}", "${Number(grade)}", CURRENT_TIMESTAMP);`)

   res.redirect(`/place/${ref_id}`)
}

exports.pushImg = (req, res) => {

   if (!req.files) {
      res.send('<h1>Файл не загружен</h1>')
   } else {
      const file = req.files.file

      const fileName = Date.now() + file.name

      file.mv(path.join(__dirname, '..', 'static', 'img') + "/" + fileName, function (err) {
         if (err)
            return res.status(500).send(err);

         const { ref_id } = req.body

         db.send("INSERT INTO `images` (`id`, `ref_id`, `img_src`) VALUES " + `(NULL, "${ref_id}", "${'img/' + fileName}");`)

         res.redirect(`/place/${ref_id}`)
      })
   }

}

exports.random = async (req, res) => {

   const max = await db.get("SELECT COUNT(*) FROM `data`")

   const rundom = Math.floor(Math.random() * (max[0]['COUNT(*)'] - 1)) + 1

   res.redirect(`/place/${rundom}`)

}