<?php
require_once("Pokemon.php");
?>
    <!doctype html>
    <html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport"
              content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Document</title>
    </head>
    <body>

    <!--<form action="main.php" method="post">
        <input type="submit" value="attaquer" name="attack1">
    </form>
    <form action="main.php" method="post">
        <input type="submit" value="attaquer" name="attack2">
    </form>-->
    </body>
    </html>


<?php
$pokemon=["attack1","attack2","attack3","attack4"];
$pikachu = new Pokemon("Pikachu", 100, 2, 0);
$raichu = new Pokemon("Raichu", 100, 2, 0);

$pikachu->listPokemon($pokemon);

/*
if(isset($_POST['attack1'])) {
    $pikachu = new Pokemon("Pikachu", 100, 2, 0);
    $raichu = new Pokemon("Raichu", 100, 2, 0);


    $pikachu->hit($raichu);
    $raichu->getVie();
    $pikachu->getVie();
    $pikachu->winXp();
    $pikachu->getXp();


}elseif(isset($_POST['attack2'])){
    $pikachu = new Pokemon("Pikachu", 100, 2, 0);
    $raichu = new Pokemon("Raichu", 100, 2, 0);


    $raichu->hit($pikachu);
    $raichu->getVie();
    $pikachu->getVie();
    $raichu->winXp();
    $raichu->getXp();
}*/

?>
