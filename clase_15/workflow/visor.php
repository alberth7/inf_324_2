<?php
$flujo=$_GET["flujo"];
$proceso=$_GET["proceso"];
$link =mysql_connect("localhost","usuario","123456");
mysql_select_db("workflow");
$resultado=mysql_query("select * from secuencia where  Cod_flujo='".$flujo."' and Cod_proceso='".$proceso."'");
$datos=mysql_fetch_array($resultado);
$form=$datos["Form"];
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
