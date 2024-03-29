<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <!--<link rel="stylesheet" type="text/css" href="index.css">-->
        <title>Pokemon, le jeu !- Page de Connexion</title>
    </head>
<!-- <style>

@font-face
{
    font-family: Pokemon Solid;
    src: url("Pokemon_Solid.ttf");
    font-weight: normal;
}

body
{
    /* Image de fond */
    background-image: url("pokemon-background.jpg");

    /* Hauteur de l'image */
    height: 100%;

    /* Positionnement de l'image */
    background-position: center;
    background-repeat: no-repeat;
    background-size: contain;
}

.container-header
{
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    font-family: Pokemon Solid;
    font-size: 3em;
}

img
{
    height: 400px;
    width: 601px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}

.container-form
{
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  background-color: #F5F5F5;
  height: 100px;
  width: 200px;
  padding-bottom: 3em;
}
#container{
    width:400px;
    margin:0 auto;
    margin-top:10%;
}
/* Bordered form */
form {
    width:100%;
    padding: 30px;
    border: 1px solid #f1f1f1;
    background: #fff;
    box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}
#container h3
{
    width: 38%;
    margin: 0 auto;
    padding-bottom: 10px;
}

/* Full-width inputs */
input[type=text], input[type=password]      else {
    // code...
{
    width: 100%;
    padding: 12px 20px;<style>

    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

/* Set a style for all buttons */
input[type=submit] {
    background-color: #0000CD;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}
input[type=submit]:hover {
    background-color: white;
    color: #FFFF00;
    border: 1px solid #FFFF00;
}

</style> -->

 <body>

  	<div class="container-header"> <!--Conteneur des titres-->
    	<div id="header-title"> <!--titre principal-->
        <h1>Pokemon Battle</h1>
    	</div>
    	<div class="container-hero"> <!--corps du hero-->
        <img src="homepage.gif" alt="moving pokeball">
    	</div>
  	</div>
<!-- Debut de la zone de connexion -->
		<div id="container">
      <form action="../php/testUsers.php" method="POST">
        <h3>Connexion</h3>
        <label><b>Nom d'utilisateur</b></label><input type="text" placeholder="Entrer le nom d'utilisateur" name="username" required>
        <label><b>Mot de passe</b></label><input type="password" placeholder="Entrer le mot de passe" name="password" required>
        <input type="submit" id='submit' value='LOGIN' >
      </form>
		</div>

	</body>
</html>

<?php
// Connexion à la base de données
try
{
	$bdd = new PDO('mysql:host=localhost;dbname=pokemon_tp;charset=utf8', 'root', 'ADRAR1112');
   $bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}

catch(PDOException $e)
{
        die('Erreur : '.$e->getMessage());
}

// Requete pour accèder au compte joueur
if($_POST["username"] !== "")
{
    $user = $_POST['username'];
    $passwd = $_POST['password'];

  	try
  	{
  		$req = $bdd -> prepare('SELECT username, passwd FROM users WHERE :username IS NOT NULL AND :passwd IS NOT NULL');
  		$response = $req->execute(array(':username'=>$user,':passwd'=>$passwd));
  	}
  	catch(Exception $e)
  	{
  	       die('Erreur : '.$e->getMessage());
  	}

    $bool = false;
    foreach($req->fetch() as $donnee) {
      if (array_key_exists($user,$req))
      {
        // confirmation de la connexion a la bdd
        echo "Bonjour". $user.", vous êtes connecté";
        $bool = true;
        //redirection page choix pokemon
      }
    }

    if (!$bool)
    {
                  try
                  {
                  	$req = $bdd -> prepare("INSERT INTO users(username,passwd) VALUES (?,?)");
                  	$response = $req->execute(array($user, $passwd));
                	}

                	catch(Exception $e)
                	{
                          die('Erreur : '.$e->getMessage());
                  }
                  var_dump($response);

            echo "Votre compte a bien été créé.";
        }
}

?>
