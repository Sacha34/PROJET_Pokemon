<?php

/**
 * Classe répertoriant toutes les fonctions permettant de constituer une équipe (Dresseur et Pokemon)
 */
class Equipe()
{
  private $player;
  private $pokemon;
  private $activePlayer;
  private $activePoke;

/**
  *
  */

// Méthode constructeur de la classe Equipe
  public function __construct(INT $newTeam, INT $pokeActiveA, INT $pokeActiveB)
  {
    $this->player = $newTeam;
    $this->pokemon1 = $pokeActiveA;
    $this->pokemon2 = $pokeActiveB;
  }

// Getters et Setters de la classe
  public function getActivePlayer() : activePlayer // Fonction pour récupérer le nom du Joueur actif
  {
    return $this-> activePlayer;
  }

  public function setActivePlayer(INT $player) : INT // Fonction pour modifier le nom du joueur actif
  {
    $this->activePlayer = $player;
  }

  public function getActivePoke() : activePoke// Fonction pour récupérer le nom du Pokemon actif
  {
    return $this-> activePoke;
  }

  public function setActivePoke($pok_name) : string // Fonction pour modifier le nom du Pokemon actif
  {
    $this->activePoke [] = $pok_name;
  }

}




?>
