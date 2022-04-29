<?php

$title='Formulaire';
ob_start();
?>

<?php //var_dump($postes)?>
<h2>Nouveau gouverneur</h2>

<div class="myForm" style="width: 59%;margin-left: 20%;">
  <form action="index.php?action=ajouter" method="post" class="row g-3">
    <div class="col-md-6">
      <label for="nom">Nom:</label>
      <input type="text" id="nom" name="nom" autocomplete="off"> *
    </div>
    <div class="col-md-6">
      <label for="prenom">Prénom:</label>
      <input type="text" id="prenom" name="prenom" autocomplete="off"> *<br>
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
      <input type="text" id="dateNaissance" name="datenaissance" autocomplete="off"> *<br>
    </div>
    <div class="col-md-6">
      <label for="partiepolitique">Partie politique:</label><br>
      <input type="text" id="partiepolitique" name="partiepolitique" autocomplete="off"> *<br>
    </div>
    <label for="poste">Poste occupé</label><br>
    <select name="poste" id="poste" class="form-select"> 
      <?php foreach ($postes as $poste): ?>
        <option value="<?php echo ($poste['nom_poste'])?>"><?php echo ($poste['nom_poste'])?></option>
      <?php endforeach; ?>
    </select><br>    
    <div class="col-md-6"><input type="text" id="dateDebut" name=dateDebut autocomplete="off" placeholder="Date début de fonction"> *</div>
    <div class="col-md-6"><input type="text" id="dateFin" name=dateFin autocomplete="off" placeholder="Date fin de fonction"> *</div>
    
    <div class="col-12">
      <input type="submit" value="Ajouter" class="btn btn-success">&nbsp;&nbsp;&nbsp;<a href="index.php?action=accueil" class="btn btn-danger">Annuler</a><br><br>
    </div>
  </form>
</div>

  
     




<?php
$content=ob_get_clean();
include 'base.php';
?>