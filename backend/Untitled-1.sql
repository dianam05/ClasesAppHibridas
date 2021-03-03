
INSERT INTO `claseshibridas`.`alumnos_alumno` 
	(`id`, 
	`estado`, 
	`nombre`, 
	`codigo`, 
	`curso`, 
	`statura`, 
	`fecha_nacimiento`, 
	`fecha_creacion`
	)
	VALUES
	('id', 
	'estado', 
	'nombre', 
	'codigo', 
	'curso', 
	'statura', 
	'fecha_nacimiento', 
	'fecha_creacion'
	);

UPDATE `claseshibridas`.`alumnos_alumno` 
	SET
	`id` = 'id', 
	`estado` = 'estado', 
	`nombre` = 'nombre', 
	`codigo` = 'codigo', 
	`curso` = 'curso', 
	`statura` = 'statura', 
	`fecha_nacimiento` = 'fecha_nacimiento', 
	`fecha_creacion` = 'fecha_creacion'
	
	WHERE
	`id` = 'id' ;

DELETE FROM `claseshibridas`.`alumnos_alumno` 
	WHERE
	`id` = 'id' ;

SELECT 	`id`, 
	`estado`, 
	`nombre`, 
	`codigo`, 
	`curso`, 
	`statura`, 
	`fecha_nacimiento`, 
	`fecha_creacion`
	 
	FROM 
	`claseshibridas`.`alumnos_alumno` 
	LIMIT 0, 1000;
