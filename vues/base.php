<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php echo $title ?></title>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="vues/assets/css/screen.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
</head>

<body>
    <div id="content">
        <h4>Liberté, Egalité, Fraternité</h4>
        <img src="vues/assets/images/drapeau-france.jpg" alt="Drapeau france">       
        <?php echo $content  ?>
        <script>
            $( function() {
                $( "#dateNaissance" ).datepicker();
                $( "#dateDebut" ).datepicker();
                $( "#dateFin" ).datepicker();
            } );
        </script>
    </div>
</body>
</html>
