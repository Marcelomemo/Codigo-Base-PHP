<?php
	
	session_start();
	require("conexion.php");

	$id_user = $_SESSION['_id_user'];
	$titulo = $_POST['titulo'];
	$fecha_in = $_POST['start_date'];
	$hora_in = $_POST['start_hour'];
	$fecha_out = $_POST['end_date'];
	$hora_out = $_POST['end_hour'];
	$dia_com = $_POST['allDay'];


	if ($titulo == "" || $fecha_in == ""){
		$evento = array('msg' => 'Error: Información incompleta el Título del evento, Fecha inicio, Día entero o Fecha Fin, no pueden estar vacias');
	}else{
		if ($conn->connect_error) {
			die("Conexión fallida: " . $conn->connect_error);
		}else{

			if ($dia_com == 'false'){
				$query = "INSERT INTO eventos (id_usuario, titulo, fecha_inicio, hora_inicio, fecha_finalizacion, hora_finalizacion, dia_completo) VALUES ( $id_user, '$titulo', '$fecha_in', '$hora_in', '$fecha_out', '$hora_out', $dia_com)";
			}else{
				$query = "INSERT INTO eventos (id_usuario, titulo, fecha_inicio, hora_inicio, dia_completo) VALUES ( $id_user, '$titulo', '$fecha_in', '00:00:00', $dia_com)";
			}

			if ($conn->query($query) === TRUE) {
				$evento = array('msg' => 'OK', 'id' => $conn->insert_id);
			} else {
			    $evento = array('msg' => 'Error: ' . $conn->connect_error);
			}
		}
	}

	$conn->close();
	echo json_encode($evento);  

?>
