<?php
session_start();
$_SESSION["idusr"]=10;
$link =mysql_connect("localhost","usuario","123456");
mysql_select_db("workflow");
$sql="select * from secuencia_logica where Cod_usuario=".$_SESSION["idusr"]." and fecha_fin is null ";
$resultado=mysql_query($sql);
?>
<table>
	<tr>
		<td>Flujo</td>
		<td>Proceso</td>
		<td>Fecha proceso</td>
		<td>Operaciones</td>
	</tr>
	<?php
	while ($datos=mysql_fetch_array($resultado))
	{
		echo "<tr>";
		echo "<td>".$datos["Cod_flujo"]."</td>";
		echo "<td>".$datos["Cod_proceso"]."</td>";
		echo "<td>".$datos["Fecha_inicio"]."</td>";
		echo "<td><a href='visor.php?flujo=".$datos["Cod_flujo"]."&proceso=".$datos["Cod_proceso"]."'>Ver</a></td>";
		echo "</tr>";
	}
	?>
</table>

