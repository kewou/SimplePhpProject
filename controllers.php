<?php

require_once('services/validForm.php');

function getGouverneursAction(){    
    $gouverneurs=getAllGouverneurs();    
    require 'vues/gouverneurs.php';
}

function getOneGouverneurAction($id_gouverneurs){    
    $gouverneur=getGouverneur($id_gouverneurs);
    require 'vues/gouverneur.php';
}

function addGouverneurAction($gouvInfoForm){    
    $validator=new ValidForm($gouvInfoForm);     
    if($validator->isValid()){
        addGouverneur($gouvInfoForm);
        getGouverneursAction();
    } else{
        echo ($validator->getMessage());
        getFormulaireAddAction();
    }   
    
}

function deleteGouverneurAction($id_gouverneurs){
    deleteGouverneur($id_gouverneurs);
    getGouverneursAction();
}

function editGouverneurAction($gouvInfoForm){    
    $validator=new ValidForm($gouvInfoForm); 
    if($validator->isValid()){
        updateGouverneur($gouvInfoForm);
        getGouverneursAction();
    }
    else{
        echo ($validator->getMessage());
        getFormulaireEditAction($gouvInfoForm["id_gouverneurs"]);
    }
}

function getFormulaireAddAction(){ 
    $postes=getPostes();      
    require 'vues/addGouverneurForm.php';
}

function getFormulaireEditAction($id_gouverneurs){ 
    $postes=getPostes();
    $gouverneur=getGouverneur($id_gouverneurs);   
    require 'vues/editGouverneurForm.php';
}

