<?php
$host_db = "localhost";
$user_db = "usuario_test";
$pwd_db = "123456";
$name_db = "academico";
$conexion = mysqli_connect($host_db, $user_db, $pwd_db, $name_db);
$consulta = "SELECT * FROM alumno where id=8";
$resultado2 = mysqli_query($conexion,$consulta);
$datos2=mysqli_fetch_array($resultado2);

$nombre=$datos2["nombre"];
$nota=$datos2["nota"];

?>
