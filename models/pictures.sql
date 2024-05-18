-- Création de la table "pictures"
CREATE TABLE IF NOT EXISTS pictures (
  id INT AUTO_INCREMENT PRIMARY KEY,
  titre VARCHAR(255) NOT NULL,
  description VARCHAR(255) NOT NULL,
  ville VARCHAR(255) NOT NULL,
  pays VARCHAR(255) NOT NULL,
  auteur VARCHAR(255) NOT NULL,
  auteur_url LONGTEXT NOT NULL,
  photo_url LONGTEXT NOT NULL,
  licence VARCHAR(255) NOT NULL
);

-- Insertion de 10 lignes avec des noms et URL spécifiques dans la table "pictures"
INSERT INTO pictures (titre, description, ville, pays, auteur, auteur_url, photo_url, licence) VALUES
  (
    'bhikshu',
    'paix intérieure, sérénité et tranquillité',
    'vientiane',
    'laos',
    'lahrim',
    'https://lahrim.fr',
    'bhikshu-vientiane-laos.jpg',
    'CC–BY–NC'
  ),
  (
    'le temps d’une pause',
    'évasion et détente',
    'ko phi phi',
    'thailande',
    'lahrim',
    'https://lahrim.fr',
    'ko-phi-phi-thailande.jpg',
    'CC–BY–NC'
  ),
  (
    'furtif',
    'moine d’un jour',
    'luang pragang',
    'laos',
    'lahrim',
    'https://lahrim.fr',
    'luang-pragang-laos.jpg',
    'CC–BY–NC'
  ),
  (
    'sahara',
    'majestueusement calme',
    'merzouga',
    'maroc',
    'lahrim',
    'https://lahrim.fr',
    'sahara-merzouga-maroc.jpg',
    'CC–BY–NC'
  ),
  (
    'sultanahmet camii',
    'mosquée bleue',
    'istanbul',
    'turquie',
    'lahrim',
    'https://lahrim.fr',
    'sultanahmet-camii-istanbul-turquie.jpg',
    'CC–BY–NC'
  ),
  (
    'fête',
    'partage un sourire',
    'tampaksiring',
    'indonesie',
    'lahrim',
    'https://lahrim.fr',
    'tampaksiring-indonesie.jpg',
    'CC–BY–NC'
  ),
  (
    'jumelle padaung',
    'deux dragons',
    'mae hong son',
    'thailande',
    'lahrim',
    'https://lahrim.fr',
    'twins-padaung-mae-hong-son-thailande.jpg',
    'CC–BY–NC'
  ),
  (
    'paon',
    'œuvre de la nature',
    'punta del diablo',
    'uruguay',
    'lahrim',
    'https://lahrim.fr',
    'paon-punta-del-diablo-uruguay.jpg',
    'CC–BY–NC'
  ),
  (
    'poule chevre',
    'amitié improbable',
    'komodo',
    'indonesie',
    'lahrim',
    'https://lahrim.fr',
    'poule-chevre-komodo-indonesie.jpg',
    'CC–BY–NC'
  ),
  (
    'vatican',
    'dôme de pluie',
    'rome',
    'italie',
    'lahrim',
    'https://lahrim.fr',
    'rome-italie.jpg',
    'CC–BY–NC'
  );
