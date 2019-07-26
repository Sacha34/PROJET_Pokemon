<?php

/**
 *
 */
class Joueur
{

  private $username;
  private $password;
  private $coin;

  public function __construct(INT $dough)
  {
    echo.$this->coin = $dough;
  }

  public function getCoin()
  {
    return $this->coin; // retourne le solde du gain accumulé
  }

  public function setCoin(INT $coin)
  {
    $this->coin = $money; // modifie le solde du gain accumulé
  }

}


?>
