<?php


class Connection{

    private static $connection;

    public function connect(){
        require_once 'config.php';
        $stringConnexion='host='.HOST.' dbname='. DB_NAME.' user='. DB_USER.' password='.DB_PASSWORD;
        $connexion = pg_connect($stringConnexion);
        if (!$connexion) {
            echo "<h1 class='error'>Problème de connexion, vérifier vos paramètres dans le fichier de configuration !</h1>";
            exit(1); // fin du programme
        }
        return $connexion;
    }

    // Retourne l'instance unique de gestion de la connexion
    public static function get(){
        if(null===static::$connection){
            static::$connection = new static();
        }
        return static::$connection;
    }


    // Constructeur privée pour rendre l'intanciantion impossible hors de cette class
    private function __construct() {
        
    }
}