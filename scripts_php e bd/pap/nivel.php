<?php

$con = mysqli_connect('localhost','root','','jogo');

//Check connection

if(mysqli_connect_error())
{
    echo"1: Conexão falhou!"; //Error code 1 = Connection Failed;
    exit();
}



//Ver se o nome já existe

$Selectquery = "SELECT  Nome,Nivel FROM jogadores ORDER BY Nivel DESC;";

$Selectcheck = mysqli_query($con,$Selectquery) or die("2: Select1 check falhou"); // Error code 2 : name check query failed
    
if ($Selectcheck->num_rows > 0) 
{
            // output data of each row
    echo"0";
            while($row = $Selectcheck->fetch_assoc()) 
            {

                echo "\t" . $row["Nome"]. "\t"  . $row["Nivel"]. "";
            }
    
} 


else    
{
    echo "Erro";
       
}

?>
