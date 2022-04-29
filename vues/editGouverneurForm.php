<?php

$title='Formulaire';
ob_start();
?>


<h2>Mise à jour d'un gouverneur. </h2><br>
<div class="myForm" style="width: 59%;margin-left: 20%;">
  <form action="index.php?action=editer" method="post" class="row g-3">
    
    <input type="hidden" name="id_gouverneurs" value=<?php echo($gouverneur['id_gouverneurs']) ?> autocomplete="off">       
    <div class="col-md-6">
      <label for="nom">Nom:</label> 
      <input type="text" id="nom" name="nom" value=<?php echo($gouverneur['nom']) ?> autocomplete="off"> *
    </div>
    <div class="col-md-6">
      <label for="prenom">Prénom:</label>
      <input type="text" id="prenom" name="prenom" value=<?php echo($gouverneur['prenom']) ?> autocomplete="off"> *<br>
    </div>
    <label for="sexe">Sexe:</label>
    <div class="form-check">
      <input type="radio" id="homme" name="sexe" value="H" checked="checked">
      <label for="homme">H</label>
      <input type="radio" id="femme" name="sexe" value="F">
      <label for="femme">F</label><br>
    </div>
    <div class="col-md-6">
      <label for="datenaissance">Date de naissance:</label><br>
      <input type="text" id="dateNaissance" name="datenaissance" value=<?php echo($gouverneur['datenaissance']) ?> autocomplete="off"> *<br>
    </div>
    <div class="col-md-6"> 
      <label for="partiepolitique">Partie politique:</label><br>
      <input type="text" id="partiepolitique" name="partiepolitique" value=<?php echo($gouverneur['partiepolitique']) ?> autocomplete="off"> *<br>
    </div>
    <label for="poste">Poste occupé</label><br>
    <select name="poste" id="poste" class="form-select"> 
      <?php foreach ($postes as $poste): ?>
        <option value="<?php echo ($poste['nom_poste']);?>" <?php if($poste['nom_poste']==$gouverneur['nom_poste']){echo (' selected');}?>><?php echo ($poste['nom_poste']); ?></option>
      <?php endforeach; ?>
    </select><br>
    <div class="col-md-6"><input type="text" id="dateDebut" name=dateDebut value=<?php echo($gouverneur['datedebut_fonction']) ?> autocomplete="off" placeholder="Date début de fonction"> *</div>
    <div class="col-md-6"><input type="text" id="dateFin" name=dateFin value=<?php echo($gouverneur['datefin_fonction']) ?> autocomplete="off" placeholder="Date fin de fonction"> * </div>
    
    <div class="col-12">   
      <input type="submit" value="Envoyer" class="btn btn-success">&nbsp;&nbsp;&nbsp;<a href="index.php?action=accueil" class="btn btn-danger">Annuler</a>
   </div>
  </form>


</div>



<?php
$content=ob_get_clean();
include 'base.php';
?>