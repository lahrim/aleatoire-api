# API gratuit de photos
API gratuite vous permet de récupérer des photos aléatoirement.


# Démo
[https://api.lahrim.fr](https://api.lahrim.fr)


## Developpement local
Changer .env.exemple en .env et ajouter les informations de la base de données, puis dans le terminal à la racine du projet :
```
yarn install
```

Une fois l'installation fini :
```
yarn start
```

Si vous êtes bien connecté à la base de donnée, dans le terminal il doit afficher :
```
=> Bien joué mon pote („• ᴗ •„)
```

**Url**
- Application : [http://localhost:8080](http://localhost:8080)


## Routes
Seul le https est pris en charge pour vos demandes.
```
Get /photos
Get /aleatoire
```

Formats disponibles : [original, large, moyen, vignette]
```
Get /photos/vignette
Get /aleatoire/vignette
```


## Exemple
Récupérez une photo aléatoire :
```
fetch("https://api.lahrim.fr/aleatoire")
  .then(response => response.json())
  .then(json => console.log(json))

```

Récupérez une photo aléatoire de taille vignette :
```
fetch("https://api.lahrim.fr/aleatoire/vignette")
  .then(response => response.json())
  .then(json => console.log(json))
```

**Réponse attendu**
```json
"resultat": true,
"photo": [
  {
    "id": 9,
    "titre": "poule chevre",
    "description": "amitié improbable",
    "ville": "komodo",
    "pays": "indonesie",
    "auteur": "lahrim",
    "auteur_url": "https://lahrim.fr",
    "photo_url": "https://api.lahrim.fr/img/vignette/poule-chevre-komodo-indonesie.jpg",
    "licence": "CC–BY–NC"
  }
]
```


## Informations
Les photos sont sous licence CC–BY–NC.
Cela permet toute exploitation de l’œuvre, sauf à des fins commerciales.
