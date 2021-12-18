<?php

$con = mysqli_connect('localhost','root','','jogo');

//Check connection

if(mysqli_connect_error())
{
    echo"1: Conexão falhou!"; //Error code 1 = Connection Failed;
    exit();
}

$jogador = $_POST["nome"];
$password = $_POST["pass"];

//Ver se o nome já existe

$namecheckquery = "SELECT  Nome FROM jogadores WHERE Nome='".$jogador."';";

$namecheck = mysqli_query($con,$namecheckquery) or die("2: Name check falhou"); // Error code 2 : name check query failed
    
if(mysqli_num_rows($namecheck)>0)
{
    echo"3: Nome já existe"; // Error code 3: Nome existe
    exit();
}

//adicionar jogador

$salt = "\$5\$rounds=5000\$" . "security" . $jogador."\$";
$hash = crypt($password,$salt);

$insertuserquery = "INSERT INTO jogadores(Nome,hash,salt) Values('".$jogador."','". $hash . "','". $salt . "');";
$insertuserquery2= "INSERT INTO somarniveis(NomeJogador) Values('".$jogador."');";

mysqli_query($con,$insertuserquery) or die("4: Inserir jogador falhou");// Error code 4 - Insert query failed
mysqli_query($con,$insertuserquery2) or die("5: Inserir jogador na 2 tabela falhou");// Error code 5 - Insert query failed

echo"0";


?>