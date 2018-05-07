INSERT INTO `secuencia` (`codFlujo`, `codProceso`, `tipoProceso`, `codRol`, `codNext`, `form`) VALUES ('F1', 'P1', 'I', 'E', 'P2', 'bienvenido.php');
INSERT INTO `secuencia` (`codFlujo`, `codProceso`, `tipoProceso`, `codRol`, `codNext`, `form`) VALUES ('F1', 'P2', 'P', 'E', 'P3', 'llenado.php');
INSERT INTO `secuencia` (`codFlujo`, `codProceso`, `tipoProceso`, `codRol`, `codNext`, `form`) VALUES ('F1', 'P3', 'P', 'K', 'NULL', 'pregunta.php');
INSERT INTO `secuencia` (`codFlujo`, `codProceso`, `tipoProceso`, `codRol`, `codNext`, `form`) VALUES ('F1', 'P4', 'P', 'D', 'P5', 'emision.php');
INSERT INTO `secuencia` (`codFlujo`, `codProceso`, `tipoProceso`, `codRol`, `codNext`, `form`) VALUES ('F1', 'P5', 'F', 'D', 'NULL', 'fin.php');

