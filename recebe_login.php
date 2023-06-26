<!DOCTYPE html>
<html>
    <head>
        <!--Import Google Icon Font-->
        <meta charset="UTF-8"> <!-- comment -->
        <title>Exibir Clientes</title>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    
     <script><!-- comment -->
        function ok() {
            setTimeout("window.location='tela_inicio.php'", 2000);                
        }

                function erro() {
               setTimeout("window.location='index.php'", 2000);
               }

    </script>  
    </head>
    <body>






<?php

include './conexao.php';
$email = $_POST['email'];
$senha = $_POST['senha'];

$resultado = $conn->query("SELECT * FROM cliente WHERE
 email='$email' and senha='$senha'");

if (mysqli_num_rows($resultado) > 0) {
    session_start();
    $_SESSION['email'] = $_POST['email'];
    $_SESSION['senha'] = $_POST['senha'];
    echo "<script>ok() </script>";
    echo "<center>Você foi logado!!";
} else {
    echo "<script> erro()</script>";
    echo "<center>Login e senha incorretos!!";
}

?>
        




     </body>
    </html>

