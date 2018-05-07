<?php
$flujo=$_GET['flujo'];
$proceso=$_GET['proceso'];
$host_db = "localhost";
$user_db = "usuario_test";
$pwd_db = "123456";
$name_db = "workflow";
$conexion = mysqli_connect($host_db, $user_db, $pwd_db, $name_db);
$consulta = "SELECT * FROM secuencia WHERE codFlujo = '$flujo' and codProceso='$proceso'";
$resultado = mysqli_query($conexion,$consulta);
$datos=mysqli_fetch_array($resultado);

if(isset($_GET["Anterior"]))
{
	$consulta = "SELECT * FROM secuencia WHERE codFlujo = '$flujo' and codNext='$proceso'";
	$resultado = mysqli_query($conexion,$consulta);
	$datos=mysqli_fetch_array($resultado);
	$proceso=$datos["codProceso"];
}
if(isset($_GET["Siguiente"]))
{
	$proceso=$datos["codNext"];
}
echo $proceso;
header("Location: visor.php?flujo=".$flujo."&proceso=".$proceso);
?>