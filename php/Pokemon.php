<?php


class Pokemon
{
    private $pok_id;
    private $pok_name;
    private $vie_base;
    private $evolution;
    private $pok_xp;
    private $urlImage;
    private $abilities;

    public function __construct(string $name,int $vie,array $abilities,int $evolution,string $urlImage, int $xp)
    {
        $this->pok_name=$name;
        $this->pok_xp=$xp;
        $this->vie_base=$vie;
        $this->abilities=array($abilities);
        $this->evolution=$evolution;
        $this->urlImage=$urlImage;
    }

    public function getPokId():int{
        return $this->pok_id;
    }

    public function getName():string{
        return $this->pok_name;
    }

    public function setName($name){
        $this->pok_name=$name;
        return $this;
    }

    public function getVie():int{
        return $this->vie_base;
    }

    public function setVie($vie){
        $this->vie_base=$vie;
        return $this;
    }

    public function getEvolution():int{
        return $this->evolution;
    }

    public function setEvolution($evo){
        $this->evolution=$evo;
        return $this;
    }

    public function getXp():int{
        return $this->pok_xp;
    }

    public function setXp($xp){
        $this->pok_xp=$xp;
        return $this;
    }

    public function getImage():string{
        return $this->urlImage;
    }

    public function getAbilities():array{
        return $this->abilities;
    }

    public function listPokemon(array $pokemon){
        echo "<pre>";
        echo "<img alt='pokemon' src=$urlImage>";
        echo $pok_name;
        echo "Vie: $vie_base";
        echo "Xp: $xp";
        echo "Evolution: $evolution";
        echo "Ces attaques: " . array($abilities);
        echo "</pre>";

    }
}