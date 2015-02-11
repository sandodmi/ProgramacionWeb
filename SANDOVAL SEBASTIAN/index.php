<?php 
include_once "include/conexion.php";
$query = "SELECT * FROM curso ORDER BY id_curso ASC";
$resultQuery = mysqli_query($con,$query);

 ?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
<p> Escoge tu curso</p>
<form action = "consulta_materias.php" method ="post">
Estudiantes :<br/>
	<select name="curso">
	<?php 
	while ($row = mysqli_fetch_array($resultQuery)){
echo "<option value='".$row['id_curso']."'>".$row['nombre_curso'] ."</option>";

}
	 ?>	
			

	
	</select>
	
	<input type="submit" value ="Enviar">

</form>



</body>
</html>