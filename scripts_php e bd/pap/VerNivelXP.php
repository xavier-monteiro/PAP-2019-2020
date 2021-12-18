<?php

$con = mysqli_connect('localhost','root','','jogo');

//Check connection

if(mysqli_connect_error())
{
    echo"1: Conexão falhou!"; //Error code 1 = Connection Failed;
    exit();
}


$username = $_POST["nome"];


//Ver se o nome já existe

$namecheckquery = "SELECT  Nivel,xp FROM jogadores WHERE Nome='".$username."';";

$Selectcheck = mysqli_query($con,$namecheckquery) or die("2: Verificar o nivel do jogador falhou"); // Error code 2 : name check query failed
    
if(mysqli_num_rows($Selectcheck)>0)
{   

     echo"0";
            while($row = $Selectcheck->fetch_assoc()) 
            {

                echo "\t" . $row["Nivel"]. "\t"  . $row["xp"]. "";
            }
}
else 
{
    
    die("Erro: algo correu mal");
}

//adicionar jogador





?>