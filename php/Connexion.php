<?php

/**
 *
 */
class Connexion
{
  private $identification = array($username => '');
  private $key = array($passwd => '');


  public function __construct(string $username, string $passwd) : string
  {
    $this->identification [] = $username;
    $this->key [] = $passwd;

  }

  public function getSignIn() : bool
  {
    return $this->identification;
    return $this->key;
  }

  public function setSignIn(string $username, string $passwd) : string
  {
    $this->identification = $username;
    $this->key = $passwd;
  }

}


?>
