<?php
  
	session_start();

	require('conexion.php');

	if ($conn->connect_error) {
		die("Conexión fallida: " . $conn->connect_error);
	}else{

		$query = "SELECT * FROM eventos WHERE id_usuario =" . $_SESSION["_id_user"];
		$resultado = $conn->query($query);

		if ($resultado->num_rows > 0) {
			$Eventos = array();
			while($reg = $resultado->fetch_assoc()){
				$evento["id"] = $reg["id"];
				$evento["title"] = $reg["titulo"];
				$evento["start"] = $reg["fecha_inicio"] . " " . $reg["hora_inicio"];
				$evento["end"] = $reg["fecha_finalizacion"] . " " . $reg["hora_finalizacion"];
				if ($reg["dia_completo"] == 1){
					$evento["allDay"] = true;
				}else{
					$evento["allDay"] = false;
				}
				array_push($Eventos, $evento);
			}
			$respuesta = array('msg' => 'OK', 'eventos' => $Eventos);
		} else {
		    $respuesta = array('msg' => 'No tienen eventos cargado' . $_SESSION["_id_user"]);
		}
	}

	$conn->close();
	echo json_encode($respuesta);

?>
