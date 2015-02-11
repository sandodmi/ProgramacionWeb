<?php
$host="localhost";
$user="root";
$password="";
$db="consulta_curso";
// creo una variable conexion //
$con=mysqli_connect($host,$user,$password)or die ("problemas al conectar");
//Selecciono la base de datos//
mysqli_select_db($con,$db)or die ("problemas al seleccionar la base de datos")


?>

