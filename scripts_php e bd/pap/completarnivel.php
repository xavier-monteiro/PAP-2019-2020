<?php

$con = mysqli_connect('localhost','root','','jogo');

//Check connection

if(mysqli_connect_error())
{
    echo"1: Conexão falhou!"; //Error code 1 = Connection Failed;
    exit();
}


$username = $_POST["nome"];
$nivel = $_POST["lv"];
$certas = $_POST["certas"];

//Ver se o nome já existe

$namecheckquery = "SELECT  $nivel FROM somarniveis WHERE NomeJogador='".$username."';";

$namecheck = mysqli_query($con,$namecheckquery) or die("2: Verificar o nivel do jogador falhou"); // Error code 2 : name check query failed
    
if(mysqli_num_rows($namecheck)>0)
{
   
    $insertuserquery = "Update somarniveis Set $nivel= '".$certas."' Where NomeJogador='".$username."';";

mysqli_query($con,$insertuserquery) or die("4: Completar nivel falhou");// Error code 4 - Insert query failed

echo"0";
}
else 
{
    
    die("Erro: algo correu mal");
}

//adicionar jogador





?>