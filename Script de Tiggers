-- Cada vez que se inserta un nuevo registro en la tabla reserva, este TRIGGER se activará y actualizará automáticamente la cantidad de reservas del cliente correspondiente --

DROP TRIGGER IF EXISTS APP_GYMBRO.AfterInsertReserva;

DELIMITER //

CREATE TRIGGER AfterInsertReserva
AFTER INSERT ON reserva
FOR EACH ROW
BEGIN
    -- Actualizar la cantidad de reservas del cliente
    UPDATE cliente
    SET CantidadReservas = CantidadReservas + 1
    WHERE ID_Cliente = NEW.ID_Cliente;
END //

DELIMITER ;

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Creación del trigger que limita una reserva por cliente por día--

DELIMITER $$

CREATE TRIGGER UnicaReservaPorDia
BEFORE INSERT ON Reserva
FOR EACH ROW
BEGIN
    DECLARE reserva_existente INT;

    -- Verifica si ya existe una reserva para el mismo cliente en el mismo día
    SELECT COUNT(*) INTO reserva_existente
    FROM Reserva
    WHERE ID_Cliente = NEW.ID_Cliente
      AND DATE(Fecha) = DATE(NEW.Fecha);

    -- Si ya existe una reserva, levanta un error y no permite la inserción
    IF reserva_existente > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Solo se permite una reserva por día';
    END IF;
END$$

DELIMITER ;

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Se activa después de cada actualización en la tabla Membresia y registra los datos antiguos antes del cambio, indicando que la acción fue una actualización --

DELIMITER //

CREATE TRIGGER after_membresia_update
AFTER UPDATE ON Membresia
FOR EACH ROW
BEGIN
    INSERT INTO Audit_Membresia (ID_Membresia, Tipo, Descripcion, Precio, Accion)
    VALUES (OLD.ID_Membresia, OLD.Tipo, OLD.Descripcion, OLD.Precio, 'UPDATE');
END;
//

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Se activa después de cada inserción en la tabla Membresia y registra los nuevos datos insertados, indicando que la acción fue una inserción --

CREATE TRIGGER after_membresia_insert
AFTER INSERT ON Membresia
FOR EACH ROW
BEGIN
    INSERT INTO Audit_Membresia (ID_Membresia, Tipo, Descripcion, Precio, Accion)
    VALUES (NEW.ID_Membresia, NEW.Tipo, NEW.Descripcion, NEW.Precio, 'INSERT');
END;
//

DELIMITER ;


