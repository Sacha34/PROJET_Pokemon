<?php

/**
 *
 */
class Connexion
{
  private $identification = array($username => '');
  private $key = array($passwd => '');
  private $coin;


  public function __construct(string $username, string $passwd) : string
  {
    $this->identification [] = $username;
    return $this->username;
    $this->key [] = $passwd;
    return $this->passwd;

  }

  public function getSignIn() : bool
  {
    return $this->identification;
    return $this->key;
  }

  public function setSignIn(string $username, string $passwd) : string
  {
    $this->identification = $username;
    return $this->username;
    $this->key = $passwd;
    return $this->passwd;
  }

}


?>
