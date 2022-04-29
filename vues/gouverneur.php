<?php

$title='Un gouverneur';
ob_start();
?>


<h1>Fiche complète</h1>

<table class="table table-striped table-light table-bordered">
    <tr>
        <th><?php $val=$gouverneur['sexe'] =='H' ? "Monsieur" :"Madame"; echo $val?></th>
        <th><?php echo ($gouverneur['prenom'] .' &nbsp;'. $gouverneur['nom']  ) ; ?></th>        
    </tr>
    <tr>
        <th>Date de naissance</th>
        <th> <?php echo($gouverneur['datenaissance']);?></th>        
    </tr>
    <tr>
        <th>Partie politique</th>
        <th><?php echo($gouverneur['partiepolitique']);?></th>
    </tr>
    <tr>
        <th>Postes occupé</th>
        <th><?php echo($gouverneur['nom_poste']);?></th>       
    </tr>
    <tr>
        <th>Du</th>
        <th><?php echo($gouverneur['datedebut_fonction'] . " au " . $gouverneur['datefin_fonction']);?></th>
    </tr>
</table>

<div>
    <br>    
    <a href="index.php?action=accueil" class="btn btn-primary">Retour à l'acceuil</a>
</div>    

<?php
$content=ob_get_clean();
include 'base.php';
?>