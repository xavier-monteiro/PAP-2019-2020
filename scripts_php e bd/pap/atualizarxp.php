<?php

$con = mysqli_connect('localhost','root','','jogo');

//Check connection

if(mysqli_connect_error())
{
    echo"1: Conexão falhou!"; //Error code 1 = Connection Failed;
    exit();
}

$xp = $_POST["xp"];
$username = $_POST["nome"];


//Ver se o nome já existe

$namecheckquery = "SELECT  xp FROM jogadores WHERE Nome='".$username."';";

$namecheck = mysqli_query($con,$namecheckquery) or die("2: Verificar xp do jogador falhou"); // Error code 2 : name check query failed
    
if(mysqli_num_rows($namecheck)>0)
{
   
    $insertuserquery = "Update jogadores Set xp= '".$xp."' Where Nome='".$username."';";

mysqli_query($con,$insertuserquery) or die("4: Atualizar xp falhou");// Error code 4 - Insert query failed

echo"0";
}
else 
{
    
    die("Erro: algo correu mal");
}

//adicionar jogador





?>