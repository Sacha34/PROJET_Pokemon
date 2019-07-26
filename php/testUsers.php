<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Pokemon, le jeu !/Connexion</title>
    </head>
    <style>
    form
    {
        text-align:center;
    }
    body
    {
        background-image: url(homepage.gif);
        background-size: cover;
				height: 401px;
				width: 600px;
    }

		h1, h2
		{
			text-align: center;
			tex
		}
    </style>
    <body>
    <h1>POKEMON, le jeu !</h1>
    <h3>Gotta catch 'em all!</h3>

    <form action="testUsers.php" method="post">
			<div class="container">
				<label for="userame">Identifiant</label> : <input type="text" name="username" id="username" /><br />
        <label for="passwd">Mot de passe</label> :  <input type="text" name="passwd" id="passwd" /><br />
        <input type="submit" value="Se connecter" />
				<button type="button" class="cancelbtn">Annuler</button>
				<input type="button" value="Click me" onclick="msg()">
			</div>
		</form>

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

// Requete pour créer un compte joueur
	if(!empty($_POST['username']) && !empty($_POST['passwd']))
{
	$username=$_POST['username'];
	$passwd=$_POST['passwd'];

	try
	{
		$req = $bdd -> prepare('INSERT INTO users (username,passwd) VALUES (:username, :passwd)');
		$req->execute(array('username'=>$username,'passwd'=>$passwd));
	}

	catch(Exception $e)
	{
        die('Erreur : '.$e->getMessage());
	}
}

// Requete pour se connecter au compte joueur
	if(!empty($_POST['username']) && !empty($_POST['passwd']))
{
	$username=$_POST['username'];
	$passwd=$_POST['passwd'];
	try
	{
		$req = $bdd -> prepare('SELECT username, passwd FROM users WHERE username IS NOT NULL AND passwd IS NOT NULL');
		$req->execute(array('username'=>$username,'passwd'=>$passwd));
	}

	catch(Exception $e)
	{
	        die('Erreur : '.$e->getMessage());
	}
}

?>

</body>
</html>
