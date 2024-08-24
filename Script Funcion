-- FUNCIONES 

-- La función ClienteConMayorReservas que has mostrado está diseñada para encontrar el nombre del cliente con la mayor cantidad de reservas en una base de datos -- 

DROP FUNCTION IF EXISTS APP_GYMBRO.ClienteConMayorReservas;

DELIMITER //

CREATE FUNCTION APP_GYMBRO.ClienteConMayorReservas(cliente varchar(50), reserva int)
RETURNS VARCHAR(100)
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE clienteNombre VARCHAR(100);

    -- Consulta para encontrar el cliente con la mayor cantidad de reservas
    SELECT cliente.Nombre
    INTO clienteNombre
    FROM cliente c
    JOIN (
        SELECT ID_Cliente
        FROM reserva
        GROUP BY ID_Cliente
        ORDER BY COUNT(*) DESC
        LIMIT 1
    ) r ON c.ID_Cliente = r.ID_Cliente;

    RETURN clienteNombre;
END //

DELIMITER ;

-- Esta función ContarReservasCanceladas cuenta el número de filas en la tabla Reserva donde la columna Cancelacion no es NULL, lo que indica que la reserva ha sido cancelada.

-- Función para contar reservas canceladas

DELIMITER $$

CREATE FUNCTION contar_reservas_canceladas()
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE cantidad_canceladas INT;

    -- Contar reservas con fecha de cancelación no nula
    SELECT COUNT(*)
    INTO cantidad_canceladas
    FROM Reserva
    WHERE Cancelacion IS NOT NULL;

    RETURN cantidad_canceladas;
END $$

DELIMITER ;

SELECT contar_reservas_canceladas() AS TotalReservasCanceladas;
