<?php

include('Pokemon-le-jeu.html');

// Connexion à la base de données
try
{
	$bdd = new PDO('mysql:host=localhost;dbname=pokemon_tp;charset=utf8', 'root', 'ADRAR1112');

// Récupération des identifiants pour connexion
$reponse = $bdd->query ('SELECT username, passwd FROM user WHERE username IS NOT NULL AND passwd IS NOT NULL');

// Affichage de chaque message (toutes les données sont protégées par htmlspecialchars)
while ($data = $reponse->fetch())
{
	'<p><strong>' . htmlspecialchars($data['username']) . '</strong> : ' . htmlspecialchars($data['passwd']) . '</p>';
	echo 'Connexion réussie';
}

$reponse->closeCursor();
header('Location: https://trello.com/b/POCZywXV/pok%C3%A9mon');

/*
require('Equipe.php');

$newTeam = "Nathalie";

$nat = new Equipe ($newTeam1);
$diarra = new Equipe($newTeam2);





?>
