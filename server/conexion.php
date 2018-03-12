<?php

	$server = "localhost";
	$user = "root";
	$password = "";
	$database = "agenda";
	
	$conn = new mysqli($server, $user, $password, $database);
	$conn->set_charset("utf8");

?>