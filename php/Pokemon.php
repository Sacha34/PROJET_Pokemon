<?php


class Pokemon
{
    private $pok_id;
    private $pok_name;
    private $vie_base=100;
    private $evolution;
    private $pok_xp;
    private $urlImage;
    private $abilities;

    private $attack_name;
    private $damages=5;
    private $attack_accuracy;
    private $xp;

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

    public function getAttack():int{
        return $this->attack_name;
    }

    public function setAttack($attack_name){
        $this->attack_name=$attack_name;
        return $this;
    }

    public function getDamages():int{
        return $this->damages;
    }

    public function setDamages($damages){
        $this->damages=$damages;
        return $this;
    }

    public function getAccuracy():int{
        return $this->attack_accuracy;
    }

    public function setAccuracy($accuracy){
        $this->attack_accuracy=$accuracy;
        return $this;
    }

    public function getEvolution():int{
        return $this->evolution;
    }

    public function setEvolution($evo){
        $this->evolution=$evo;
        return $this;
    }

    public function getXp(){
        echo $this->xp."<br>";
        return $this->xp;
    }

    public function setXp($xp){
        $this->xp=$xp;
        return $this;
    }

    public function getVie():int{
        echo "La vie de " .$this->pok_name . ":". $this->vie_base . "<br>";
        return $this->vie_base;
    }

    public function setVie($vie){
        $this->vie_base=$vie;
        return $this;
    }

    public function __construct(string $name,/*array $abilities,*/int $evolution,/*string $urlImage,*/ int $xp)
    {
        $this->pok_name=$name;
        $this->pok_xp=$xp;
        //$this->abilities=array($abilities);
        $this->evolution=$evolution;
        //$this->urlImage=$urlImage;
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

    public function hit(Pokemon $defenseur){
        if($this->vie_base <= 0){
            echo $this->pok_name . "died!!";
        }else{
            $defenseur->vie_base -= $this->damages;
            $this->winXp();
            $this->setVie($this->vie_base);
        }
    }

    public function winXp(){
        $this->xp=$this->xp+1;
    }
}