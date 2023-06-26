<?php

include './conexao.php';
$nome = $_POST['nome'];
$email = $_POST['email'];
$senha = $_POST['senha'];
$telefone = $_POST['telefone'];
$cpf = $_POST['cpf'];
$sexo = $_POST['sexo'];
$data_nasc = $_POST['data_nasc'];
$cidade = $_POST['cidade'];
$estado = $_POST['estado'];
$endereco = $_POST['endereco'];
$inserir = $con -> query
("INSERT INTO cadastro VALUES(0,'$nome','$email','$senha','$telefone','$cpf','$sexo','$data_nasc', '$cidade', '$estado', '$endereco')");

if($inserir){
    echo'Cadastrado com sucesso';
    header('URL=home.html');
} else{
    echo'Não cadastrado';
    header('URL=cadastro.html');
}

?>

