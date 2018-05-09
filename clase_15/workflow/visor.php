<?php
$host_db = "localhost";
$user_db = "usuario";
$pwd_db = "123456";
$name_db = "workflow";

$link = mysqli_connect($host_db, $user_db, $pwd_db, $name_db);

$flujo=$_GET["flujo"];
$proceso=$_GET["proceso"];

$sql="select * from secuencia where  Cod_flujo='$flujo' and Cod_proceso='$proceso'";

$resultado=mysqli_query($link,$sql);
$datos=mysqli_fetch_array($resultado);
print_r($datos);	
$form=$datos["Form"];
echo "..................".$form;
include "v".$form;
?>
<html>
	<body>
		<h1>Workflow</h1>
		<form action="motor.php" method="GET">
			<input type="hidden" name="flujo" value="<?php echo $flujo;?>"/>
			<input type="hidden" name="proceso" value="<?php echo $proceso;?>"/>
			<!--iframe src="<?php echo $form;?>" width="640" heigth="480"-->
			<!--/iframe-->
			<?php
			include $form;
			?>
			<br/>
			<input type="submit" name="Anterior" value="Anterior"/>
			<input type="submit" name="Siguiente" value="Siguiente"/>
		</form>
	</body>
</html>
