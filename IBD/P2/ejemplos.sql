INSERT INTO usuarios
(Nombre, Apellido, Correp, Estatura, IDDireccion)
VALUES
('Peter', 'Parker', 'spiderman@gmail.xd', 75, 1001),
('Peter2', 'Parker2', 'spiderman@gmail.xd2', 75, 1002);

UPDATE usuarios 
SET IDDireccion = 1004
WHERE 
	nombre In ('Peter2');
