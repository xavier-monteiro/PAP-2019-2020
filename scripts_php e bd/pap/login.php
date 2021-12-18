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

$namecheckquery = "SELECT id,Nome,salt,hash,Nivel,xp FROM jogadores WHERE Nome='".$jogador."';";

$namecheck = mysqli_query($con,$namecheckquery) or die("2: Name check falhou"); // Error code 2 : name check query failed

if(mysqli_num_rows($namecheck) !=1)
{
    echo "5: Either no user with name, or more than one"; //Error code 5;
    exit();
}

//get login info from query


$existinginfo = mysqli_fetch_assoc($namecheck);
$salt = $existinginfo["salt"];
$hash = $existinginfo["hash"];

$loginhash = crypt($password,$salt);
if($hash != $loginhash)
{
    echo "6: Incorrect password"; // password does not hash to match table
    exit();
}
echo "0\t" . $existinginfo["Nivel"]. "\t" . $existinginfo["id"]. "\t" . $existinginfo["xp"];

?>