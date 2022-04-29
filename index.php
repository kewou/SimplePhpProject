<?php

// Controleur principale du projet
require_once 'modeles.php';
require_once 'controllers.php';

// Gestion des actions
if(isset($_GET['action'])){
    $action=$_GET['action'];
}else{
    $action="";
}

switch($action){
    case "detail":
        if(isset($_GET['id_gouverneurs'])){
            getOneGouverneurAction($_GET['id_gouverneurs']);
        }               
        break;
    case "formulaireAdd":        
        getFormulaireAddAction();        
        break;
    case "formulaireEdit":        
        getFormulaireEditAction($_GET['id_gouverneurs']);        
    break;        
    case "ajouter":
        if(isset($_POST)){
            addGouverneurAction($_POST);
        }
        break;
    case "supprimer":        
        deleteGouverneurAction($_GET['id_gouverneurs']);
        break;
    case "editer":        
        editGouverneurAction($_POST);
        break;        
    case "accueil":
        getGouverneursAction();
        break;        
    default:
        getGouverneursAction();      
        break;
}

