<?php

require_once 'services/connexion.php';

function getAllGouverneurs(){
    $connexion=Connection::get()->connect();    
    $sql="select * from gouverneurs  ORDER BY id_gouverneurs DESC limit 30;";    
    $result=pg_prepare($connexion,"queryALL",$sql);    
    if(!$result){
        echo ("<h1 class='error'>Erreur lors de l'exécution de la requète</h1>");
    }else{
        return pg_fetch_all(pg_execute($connexion,"queryALL",array()));                 
    }    
}


function getGouverneur($id_gouverneurs){
    $connexion=Connection::get()->connect();
    $result=pg_prepare($connexion,"queryOne","select * from gouverneurs g,occupe,poste p 
                                    where g.id_gouverneurs= '{$id_gouverneurs}'
                                    and g.id_gouverneurs=occupe.id_gouverneurs 
                                    and p.nom_poste=occupe.nom_poste;");
    if(!$result){
        echo ("<h1 class='error'>Erreur lors de l'exécution de la requète</h1>");
    }else{        
        return pg_fetch_array(pg_execute($connexion,"queryOne",array()));                
    }         
}


function addGouverneur($gouvInfoForm){    
    $connexion=Connection::get()->connect();
    $sql="insert into gouverneurs (Prenom,Nom,Sexe,DateNaissance,PartiePolitique) VALUES 
    ('{$gouvInfoForm['prenom']}','{$gouvInfoForm['nom']}',
     '{$gouvInfoForm['sexe']}','{$gouvInfoForm['datenaissance']}',
     '{$gouvInfoForm['partiepolitique']}')";    
    $result=pg_prepare($connexion,"queryAdd",$sql);
    if(!$result){
        echo ("<h1 class='error'>Erreur lors de l'exécution de la requète</h1>");
    }else{        
        pg_execute($connexion,"queryAdd",array());                
    }    
    affectePoste($gouvInfoForm);
}

function deleteGouverneur($id_gouverneurs){
    $connexion=Connection::get()->connect();
    $sql="delete from gouverneurs g where g.id_gouverneurs='{$id_gouverneurs}'";
    $result=pg_prepare($connexion,"queryDelete",$sql);
    if(!$result){
        echo ("<h1 class='error'>Erreur lors de l'exécution de la requète</h1>");
    }else{        
        pg_execute($connexion,"queryDelete",array());                
    }        
}

function updateGouverneur($gouvInfoForm){
    $connexion=Connection::get()->connect();
    $idGouv=intval($gouvInfoForm['id_gouverneurs']);    
    $sql="update gouverneurs 
    set nom = '{$gouvInfoForm['nom']}',prenom ='{$gouvInfoForm['prenom']}',sexe='{$gouvInfoForm['sexe']}',
        datenaissance='{$gouvInfoForm['datenaissance']}', partiepolitique='{$gouvInfoForm['partiepolitique']}'
    where id_gouverneurs = '{$idGouv}'";
    $sql2="update occupe
    set nom_poste='{$gouvInfoForm['poste']}', DateDebut_Fonction='{$gouvInfoForm['dateDebut']}',DateFin_Fonction='{$gouvInfoForm['dateFin']}'
    where id_gouverneurs = '{$idGouv}'";
    $result=pg_prepare($connexion,"queryUpdate",$sql);    
    $result2=pg_prepare($connexion,"queryUpdate2",$sql2);
    if(!$result || !$result2){
        echo ("<h1 class='error'>Erreur lors de l'exécution de la requète</h1>");
    }else{        
        pg_execute($connexion,"queryUpdate",array());
        pg_execute($connexion,"queryUpdate2",array());                
    }      
}

function getPostes(){
    $connexion=Connection::get()->connect();
    $sql="select * from poste";    
    $result=pg_prepare($connexion,"queryALLPoste",$sql);    
    if(!$result){
        echo ("<h1 class='error'>Erreur lors de l'exécution de la requète</h1>");
    }else{
        return pg_fetch_all(pg_execute($connexion,"queryALLPoste",array()));                 
    }    
}

function getIdLastGouvAdd(){
    $connexion=Connection::get()->connect();
    $sql="select * from gouverneurs  ORDER BY id_gouverneurs DESC limit 1;";
    return pg_fetch_array(pg_query($sql))["id_gouverneurs"];
}


function affectePoste($gouvInfoForm){    
    $idGouv=(int)getIdLastGouvAdd();
    $connexion=Connection::get()->connect();
    $sql="insert into occupe (id_Gouverneurs,Nom_Poste, DateDebut_Fonction,DateFin_Fonction) VALUES
    ('{$idGouv}','{$gouvInfoForm['poste']}',
    '{$gouvInfoForm['dateDebut']}','{$gouvInfoForm['dateFin']}')";    
    $result=pg_prepare($connexion,"queryAffectePoste",$sql);
    if(!$result){
        echo ("<h1 class='error'>Erreur lors de l'exécution de la requète</h1>");
    }else{        
        pg_execute($connexion,"queryAffectePoste",array());                
    }
    
}
