<?php 
include "include/conexion.php";
$cursoEscogido = $_POST['curso'];



echo "ESTOS SON LOS ESTUDIANTES";
echo "<br/>";
echo "MATRICULADOS EN LA MATERIA";
	
		
		//======== Unir consultas de distintas tablas ========= // 
		//inner Join es igual a Join";
		$selectJoin = "SELECT  estudiante.id_estudiante, estudiante.nombre, estudiante.apellido,curso.nombre_curso FROM estudiante
			INNER JOIN estudiante_cursos ON estudiante.id_estudiante = estudiante_cursos.id_estudiante
			INNER JOIN curso             ON curso.id_curso = estudiante_cursos.id_curso WHERE curso.id_curso=$cursoEscogido";
			
		$resultQueryJoin = mysqli_query($con,$selectJoin);

		while ($row = mysqli_fetch_array($resultQueryJoin)) {
			echo "  
			<form action='notas.php' method='post'>
					<select name='usuario'>
						<option value='".$row['id_estudiante']."'>".$row['id_estudiante'] ."</option>
					</select>"
					
					." ".

					$row["nombre"]." ".$row["apellido"]

					." ".
				
					"<select name='curso'>
						<option value='".$cursoEscogido."'>".$row['nombre_curso'] ."</option>
					</select>"
					
					." ".
					
					"<input type='submit' value='Ver notas'>

				</form>




				"
			;
 		}
			
 
 ?>