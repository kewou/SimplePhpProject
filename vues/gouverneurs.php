<?php

$title='Les gouverneurs';
ob_start();
?>

<?php  ?>

<h2>Ils ont gouvernés la France.</h2>
<br>
<div>    
    <a href="index.php?action=formulaireAdd" class="btn btn-primary">Ajouter un gouverneur</a>
</div> 
<table class="table table-striped table-light table-bordered">
    <?php foreach ($gouverneurs as $gouv): ?>
    <tr>
        <th><a href="index.php?id_gouverneurs=<?php echo $gouv['id_gouverneurs']?>&action=detail"
                        class="link-secondary" style="text-transform:uppercase"> 
            <?php echo $gouv['prenom']?> &nbsp; <?php echo $gouv['nom']?>.
            </a>
        </th>
        <th>
            <a href="index.php?id_gouverneurs=<?php echo $gouv['id_gouverneurs']?>&action=formulaireEdit"
            class="btn btn-success">editer</a>
        </th>        
        <th>
            <a href="index.php?id_gouverneurs=<?php echo $gouv['id_gouverneurs']?>&action=supprimer"
            class="btn btn-danger">supprimer</a>
        </th>
    </tr>
    <?php endforeach; ?>
    </table>   

<?php
$content=ob_get_clean();
include 'base.php';
?>