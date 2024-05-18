var express = require('express')
var router = express.Router()

const connection = require('../config/config')


router.get('/photos', (req, res) => {
  connection.query('select * from pictures', (error, data) => {
    if(error) return res.json({ resultat: false })

    if(data.length === 0) return res.json({ resultat: false })

    const photosAvecURL = data.map(photo => {
      photo.photo_url = 'https://api.lahrim.fr/img/original/' + photo.photo_url

      return photo
    })

    return res.json({ resultat: true, photo: data })
  })
})


router.get('/photos/:taille', (req, res) => {
  let taille = req.params.taille.toLowerCase()

  if (!taille || taille === '' || !['large', 'moyen', 'vignette'].includes(taille)){
    taille = 'original'
  } else {
    taille = taille
  }

  connection.query('select * from pictures', (error, data) => {
    if(error) return res.json({ resultat: false })

    const photosAvecURL = data.map(photo => {
      photo.photo_url = 'https://api.lahrim.fr/img/' + taille +  '/' + photo.photo_url

      return photo
    })

    return res.json({ resultat: true, photo: data })
  })
})


router.get('/aleatoire', (req, res) => {
  connection.query('select * from pictures', (error, data) => {
    if(error) return res.json({ resultat: false })

    if(data.length === 0) return res.json({ resultat: false })

    const photosAvecURL = data.map(photo => {
      photo.photo_url = 'https://api.lahrim.fr/img/original/' + photo.photo_url

      return photo
    })

    const aleatoire = data[Math.floor(Math.random() * data.length)]

    return res.json({ resultat: true, photo: aleatoire })
  })
})


router.get('/aleatoire/:taille', (req, res) => {
  let taille = req.params.taille.toLowerCase()

  if (!taille || taille === '' || !['large', 'moyen', 'vignette'].includes(taille)){
    taille = 'original'
  } else {
    taille = taille
  }

  connection.query('select * from pictures', (error, data) => {
    if(error) return res.json({ resultat: false })

    if(data.length === 0) return res.json({ resultat: false })

    const photosAvecURL = data.map(photo => {
      photo.photo_url = 'https://api.lahrim.fr/img/' + taille +  '/' + photo.photo_url

      return photo
    })

    const aleatoire = data[Math.floor(Math.random() * data.length)]

    return res.json({ resultat: true, photo: aleatoire })
  })
})


module.exports = router
