<?php


class ValidForm{

    private $valid;
    private $message;
    private $infosForm;

    function __construct($infosForm) {
        $this->valid = true;
        $this->message = "";       
        $this->infosForm = $infosForm;
        $this->validForm();
      }

    // vérification de la présence des valeurs obligatoires d'un formulaire
    function haveNotNullValue($tabInfosForm) {                       
        if (is_array($tabInfosForm) || is_object($tabInfosForm)){            
            foreach ($tabInfosForm as $cle) {                
                if (!isset($cle))                    
                    return FALSE;
                if (is_string($cle) && trim($cle) === "")                
                    return FALSE;                
            }
        }
        return TRUE;
    }

    // vérification de la période du poste effectué
    function validePeriodePoste($dateDebut,$dateFin){
        $timeDebut=strtotime($dateDebut);
        $timeFin=strtotime($dateFin);
        $newformatDebut = date('Y-m-d',$timeDebut);
        $newformatFin = date('Y-m-d',$timeFin);
        if($newformatFin < $newformatDebut){
            return false;
        }else{
            return true;
        }
    }
    
    // valide le formulaire
    function validForm(){      
        if(!$this->haveNotNullValue($this->infosForm)){
            $this->valid=false;
            $this->message="<h3 class='error'>Veuillez remplir tous les champs obligatoire svp !</h3>";
            return;
        }elseif(!$this->validePeriodePoste($this->infosForm['dateDebut'],$this->infosForm['dateFin'])){
            $this->valid=false;
            $this->message="<h3 class='error'>La date de fin doit être antérieur à la date de début de fonction</h3>";
            return;
        }

    }

    function isValid() {
        return $this->valid;
    }

    function getMessage(){
        return $this->message;
    }
}




