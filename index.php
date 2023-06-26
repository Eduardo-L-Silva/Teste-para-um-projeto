<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="index.php" method="post">
        senha:<input type="text" name="senha" id=""><br>    
        nome_cliente:<input type="text" name="nome_cliente" id=""><br>
        e-mail:</e-mail>:<input type="text" name="email" id=""><br>
        telefone:<input type="text" name="telefone" id=""><br>
        sexo:<input type="text" name="seu_sexo" id=""><br> 
        data_nascimento:<input type="text" name="data_nascimento" id=""><br> 
        <input type="submit" value="CADASTRAR">
    </form>
    <?php
        include './conexao.php';
        $senha = $_POST['senha'];
        $nome_cliente = $_POST['nome_cliente'];
        $email = $_POST['email'];
        $telefone = $_POST['telefone'];
        $seu_sexo = $_POST['seu_sexo'];
        $data_nascimento = $_POST['data_nascimento'];
        $inserir = $con -> query
        ("INSERT INTO cadastro VALUES(0,'$senha', 
        '$nome_cliente','$email','$telefone','$seu_sexo','$data_nascimento')");
        if($inserir){
          echo "Cadastro realizado com sucesso";
          echo "<script>ok() </script>";
        }else{
            echo "Cadastro não realizado";
            echo "<script>ok() </script>";
        }
    ?>
    
</body>
</html>