<?php
$host_db = "localhost";
$user_db = "usuario_test";
$pwd_db = "123456";
$name_db = "workflow";
$conexion = mysqli_connect($host_db, $user_db, $pwd_db, $name_db);

$flujo=$_GET['flujo'];
$proceso=$_GET['proceso'];

$consulta = "SELECT * FROM secuencia WHERE codFlujo = '$flujo' and codProceso='$proceso'";
$resultado = mysqli_query($conexion,$consulta);
$datos=mysqli_fetch_array($resultado);

print_r($datos);


$form=$datos["form"];

?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<h1>workflow</h1>
	<form action="motorw.php" method="GET">
		
		<?php
			include $form;
		?>

		</br>
		<input type="input" name="Anterior" value="Anterior"/>
		<input type="input" name="Siguiente" value="Siguiente"/>


	</form>


		<iframe src="<?php echo $form;?>" width="640 heigth="480"></iframe>

		



</body>
</html>