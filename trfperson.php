<?php 
    ob_start();
    require "connection.php";
    ob_end_clean();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Traffic admin</title>
</head>
<body>
    <?php 
        session_start();
        echo($_SESSION['id']);
        echo("<br>");
        echo($_SESSION['name']);
        echo("<br>");
    ?>
    <button id="trfreg" class="float-left submit-button" >add traffic person</button><br>
    <script type="text/javascript">
        document.getElementById("trfreg").onclick = function () {
            location.href = "/trfregister.php";
        };
    </script>
    <a href = "trflogout.php">logout</a>
</body>
</html>