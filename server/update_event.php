<?php
 
	session_start();
   	require("conexion.php");

	$id = $_POST['id'];
	$fecha_in = $_POST['start_date'];
	$hora_in = $_POST['start_hour'];
	$fecha_out = $_POST['end_date'];
	$hora_out = $_POST['end_hour'];

	if ($conn->connect_error) {
		die("Conexión fallida: " . $conn->connect_error);
	}else{
		
		if($fecha_out == 'Invalid da'){
			$query = "UPDATE eventos SET fecha_inicio = '$fecha_in', hora_inicio = '$hora_in' WHERE id = $id";
		}else{
			$query = "UPDATE eventos SET fecha_inicio = '$fecha_in', hora_inicio = '$hora_in', fecha_finalizacion = '$fecha_out', hora_finalizacion = '$hora_out' WHERE id = $id";
		}	

		if ($conn->query($query) === TRUE) {
			$actualizar = array('msg' => 'OK');
		} else {
		    $actualizar = array('msg' => 'Error: ' . $conn->connect_error);
		}
	}

	$conn->close();
	echo json_encode($actualizar);

?>
