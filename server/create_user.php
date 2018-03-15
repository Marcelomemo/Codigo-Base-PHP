<?php

	function nuevo_usuario($correo, $password, $nombre, $fecha ){
		require('conexion.php');

		if ($conn->connect_error) {
			die("Conexion fallida: " . $conn->connect_error);
		}else{

			$hash = password_hash($password, PASSWORD_DEFAULT);
			$query = "INSERT INTO usuarios (correo, password, nombres, fecha_nacimiento) VALUES ('$correo', '$hash', '$nombre', '$fecha')";
			if($conn->query($query) == TRUE){
				echo "El usuario $nombre, creado exitosamente. <br>";
			}else{
				echo "Error: " . $conn->error . "<br>";
			}
			$conn->close();
		}
	}

	nuevo_usuario($conn, "marcelo@correo.com", "12345", "Marcelo Narváez", "1978-11-05");
	nuevo_usuario($conn, "alejandra@correo.com", "12345", "Alejandra Narváez", "2008-12-23");
	nuevo_usuario($conn, "santiago@correo.com", "12345", "Santiago Narváez", "2010-07-27");

 ?>
