<?php 
$nombre=$_GET["nombre"];
$nota=$_GET["nota"];
$link =mysql_connect("localhost","usuario","123456");

$resultado2=mysql_query($link,"update academico.alumno set nombre='".$nombre."', nota='".$nota."' where id=".$_SESSION["idusr"]);
?>