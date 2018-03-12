<?php

	session_start();
	require('conexion.php');

	$nombre = $_POST['username'];
	$password = $_POST['password'];

	$mensaje = array("msg" => "Usuario o contraseña incorecta");
	if ($conn->connect_error) {
		die("Conexión fallida: " . $conn->connect_error);
	}else{

		$hash = password_hash($password, PASSWORD_DEFAULT);
		$query = "SELECT * FROM usuarios WHERE correo = '$nombre'";
		$resultado = $conn->query($query);

	    if($resultado->num_rows > 0){
	    	$reg = $resultado->fetch_assoc();

	    	if(password_verify($password, $reg["password"])){
	    		$mensaje = array("msg" => "OK");
	    		$_SESSION["_id_user"] = $reg["id"];
	    	}
	    }
	}

	$conn->close();
	echo json_encode($mensaje);
?>
