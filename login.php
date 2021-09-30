<?php 

$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$dbname = "botica";

$conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
if(!$conn)
{
    die("No hay conexión: ".mysqli_connect_error());
}

$nombre = $_POST["user"];
$pass = $_POST["pass"];

$query = mysqli_query($conn,"SELECT * FROM login WHERE usuario = '".$nombre."' and clave = '".$pass."'");
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