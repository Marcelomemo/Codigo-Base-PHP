<?php

	session_start();
	require("conexion.php");

	$id = $_POST["id"];

	if ($conn->connect_error) {
		die("Conexión fallida: " . $conn->connect_error);
	}else{

		$query = "DELETE FROM eventos WHERE id = $id";

		if ($conn->query($query) === TRUE) {
			$eliminar = array('msg' => 'OK');
		}else{
		    $eliminar = array('msg' => 'Error: No tiene evento cargado');
		}
	}

	$conn->close();
	echo json_encode($eliminar);

?>
