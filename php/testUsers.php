<?php
// Connexion à la base de données
try
{
	$bdd = new PDO('mysql:host=localhost;dbname=pokemon_tp;charset=utf8', 'root', 'ADRAR1112');
}
catch(Exception $e)
{
        die('Erreur : '.$e->getMessage());
}

// Insertion du message à l'aide d'une requête préparée
$req = $bdd->prepare('INSERT INTO users (username, passwd) VALUES(?, ?)');
$req->execute(array($_POST['username'], $_POST['passwd']));

// Redirection du visiteur vers la page du jeu
header('Location: testEquipe.php');
?>
