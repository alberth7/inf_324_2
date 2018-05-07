<?php 
session_start();
$resultado2=mysql_query("select * from academico.alumno where id=".$_SESSION["idusr"]);
$datos2=mysql_fetch_array($resultado2);

$nombre=$datos2["nombre"];
$nota=$datos2["nota"];
?>