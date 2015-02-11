
<?php 
	include_once 'include/conexion.php'; //INCLUYO ARCHIVO DE CONEXIÓN
	
	//======== CONSULTAR ========= //

	$id_curso = $_POST['curso'];
	$id_estudiante= $_POST ['usuario'];


	$selectJoin=" SELECT * FROM estudiante
	 INNER JOIN notas_estudiante ON estudiante.id_estudiante = notas_estudiante.id_estudiante
	 INNER JOIN nota             ON nota.id_nota             = notas_estudiante.id_nota
	 INNER JOIN curso            ON curso.id_curso           = notas_estudiante.id_curso WHERE curso.id_curso = $id_curso AND estudiante.id_estudiante=$id_estudiante";

	$resultQuery = mysqli_query($con,$selectJoin);
?>


<table border="1">
	 <tr>
	   <td>Nombre Nota</td>
	   <td>Nota</td> 
	   <td>Porcentaje nota</td>
	   <td>Total</td>
	 </tr>

	<?php
	
		$varAumento=0;
		$nombre;
	while ($row = mysqli_fetch_array($resultQuery)) {
		$nombre=$row['nombre']." ".$row['apellido'];
		$nombre_materia=$row['nombre_curso'];
				echo "

				  <tr>
				    <td>".$row['nombre']."</td>
				    <td>".$row['float']."</td> 
				    <td>".$row['porcentaje']."</td>
				    <td>".$row['float'] * $row['porcentaje']."</td>
				  </tr>
				";

			$varAumento++;

			$arrayNota[$varAumento]=$row['float'] * $row['porcentaje'];
		}

	?>
</table>

<?php 

echo $nombre_materia.":";
	echo "TOTAL ________________:";
	echo$arrayNota[1]+$arrayNota[2];
	
	echo "</br>";

?>