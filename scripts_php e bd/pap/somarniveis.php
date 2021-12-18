<?php

$con = mysqli_connect('localhost','root','','jogo');

//Check connection

if(mysqli_connect_error())
{
    echo"1: Conexão falhou!"; //Error code 1 = Connection Failed;
    exit();
}

$jogador = $_POST["nome"];


//Ver se o nome já existe

$namecheckquery = "SELECT  * FROM somarniveis WHERE NomeJogador='".$jogador."';";

$namecheck = mysqli_query($con,$namecheckquery) or die("2: Name check falhou"); // Error code 2 : name check query failed
    
if(mysqli_num_rows($namecheck)>0)
{
            echo"0";
            while($row = $namecheck->fetch_assoc()) 
            {

                echo "\t" . $row["Nivel1"]. "\t"  . $row["Nivel2"]. "\t"  . $row["Nivel3"]. "\t"  . $row["Nivel4"]. "\t"  . $row["Nivel5"]. "";
            }
}

//adicionar jogador






?>