<?php 

$dbhost = "localhost:3306";
$dbuser = "root";
$dbpass = "naciEl19DeMarzo";
$dbname = "botica";

$conn = mysqli_connect($dbhost, $dbuser, $dbpass);
if(!$conn)
{
    die("No hay conexión: ".mysqli_connect_error());
}

$nombre = $_POST("name");
$pass = $_POST("pass");

$query = mysqli_query($conn,"SELECT *FROM login WHERE usuario = '".$nombre."'and password = '".$pass."'");
$nr = mysqli_num_rows($query);

if($nr == 1)
{
    echo "Bienvenido:" .$nombre;
}
else if ($nr == 0)
{
    echo "No ingreso";
}





?>