<?php 
$flujo=$_GET["flujo"];
$proceso=$_GET["proceso"];
$link =mysql_connect("localhost","usuario","123456");
mysql_select_db("workflow");
$resultado=mysql_query("select * from secuencia where  Cod_flujo='".$flujo."' and Cod_proceso='".$proceso."'");
$datos=mysql_fetch_array($resultado);
$form=$datos["Form"];
include "m".$form;


if (isset($_GET["Anterior"]))
{
	$resultado=mysql_query("select * from secuencia where  Cod_flujo='".$flujo."' and Cod_procnext='".$proceso."'");
	$datos=mysql_fetch_array($resultado);
	$proceso=$datos["Cod_proceso"];
}
if (isset($_GET["Siguiente"]))
{
	$proceso=$datos["Cod_procnext"]	;
}
header("Location: visor.php?flujo=".$flujo."&proceso=".$proceso);
?>