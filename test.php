<?php
$host_db = "localhost";
$user_db = "usuario_test";
$pwd_db = "123456";
$name_db = "workflow";

$conexion = mysqli_connect($host_db, $user_db, $pwd_db, $name_db);


$consulta = "SELECT * FROM secuencia ";
$resultado = mysqli_query($conexion,$consulta);
$datos=mysqli_fetch_array($resultado);

print_r($datos);



?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>


	


</body>
</html>