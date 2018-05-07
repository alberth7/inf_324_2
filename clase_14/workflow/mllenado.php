<?php 
$nombre=$_GET["nombre"];
$nota=$_GET["nota"];

$resultado2=mysql_query("update academico.alumno set nombre='".$nombre."', nota='".$nota."' where id=10");
?>