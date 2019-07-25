<?php

/**
 *
 */
class Joueur
{

  private $username;
  private $password;
  private $money;

  public function __construct(INT $dough)
  {
    echo.$this->money = $dough;
  }

  public function getMoney()
  {
    return $this->money; // retourne le solde du gain accumulé
  }

  public function setMoney(INT $coin)
  {
    $this->money = $coin; // modifie le solde du gain accumulé
  }

}


?>
