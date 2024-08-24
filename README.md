**!!! QUEREMOS DARTE LA BIENVENIDA GYM BROTHERR !!!**

¡Hola a todos!

Es un honor darles la bienvenida a este nuevo y emocionante proyecto de nuestro gimnasio. Aquí no solo queremos que entrenen y se sientan a gusto y seguros con sigo mismo, sino que también se sientan como en casa. Este es un espacio donde estaremos a disposicon para poder desarrollar buenos hábitos, desde lo fisico, con entrenamientos y cuidados del cuerpo como masajes relajantes, y terapias alternativas musculares, sino que tambien apoyamos a mejorar su salud alimenticia y disfrutar de entrenamientos que los desafíen y motiven.

Pero lo más importante, queremos que se sientan rodeados de amigos, en un ambiente cálido y acogedor. Este gimnasio es más que un lugar para entrenar; es una comunidad donde cada uno de ustedes puede crecer y alcanzar sus objetivos personales, siempre con el apoyo de quienes los rodean.

¡Bienvenidos a su nuevo hogar de bienestar y amistad! Estamos emocionados de compartir este viaje con ustedes.

![image](https://github.com/user-attachments/assets/7aa4f9fd-a81d-45ca-9caa-5c32d716b292)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Entrega de proyecto final**

@Alumno -- **Adalia Tomas**

@Comision -- **51790**

@Tutor -- **Ariel Annone**

@Docente -- ****Anderson Michel Torres**

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

# App Gimnasio PassLines GymBro

Problema:
Nuestro equipo de desarrollo está trabajando en un sistema de gestión de reservas para un gimnasio llamado PassLine GymBro, y nos enfrentamos a la necesidad de diseñar una base de datos eficiente que pueda manejar todas las operaciones relacionadas con las reservas de manera óptima.

Descripción del Problema:
Gestión de Clientes, Empleados y Clases a realizar: Necesitamos una base de datos que nos permita registrar la información de los clientes que realizan reservas para las distintos tipos de clases y disciplinas, así como los ingresos de los empleados involucrados en el horario y tipo de clase que se reserva, profesores deportivos o coach de salon.

Gestión de Tipos de Reserva: Es importante poder clasificar las reservas según su tipo, ya sea una reserva estándar (horario de salon de maquinas), una reserva para eventos especiales (tipo de clase personalizada). Esto nos ayudará a organizar mejor el flujo de trabajo y adaptar nuestros servicios según las necesidades del cliente.

Gestión de Disponibilidad: La base de datos debe permitirnos registrar la disponibilidad de cupos por rango horario en cada franquicia (sucursal/gimnasio), para poder gestionar su capacidad y estado (ocupado o disponible). Esto es fundamental para garantizar una experiencia confortante y eficiente a los usuarios y evitar conflictos de reservas.

Registro de Reservas: Necesitamos un sistema que pueda registrar de manera detallada cada reserva realizada, incluyendo la fecha y hora de la reserva, el cliente que la realizó, la franquicia seleccionada, el personal que corresponde segun la franja horaria y el tipo de clase tomada.

Objetivo:
Diseñar e implementar una base de datos relacional que satisfaga todas las necesidades de gestión de reservas para nuestro sistema de gestión de gimnasios. Esta base de datos deberá ser eficiente, escalable y fácil de mantener, permitiendo una gestión ágil y precisa de todas las operaciones relacionadas con las reservas.

Descripción de la Base de Datos - Gestión de Reservas en Gimnasios
Esta base de datos está diseñada para gestionar reservas en gimnasios, así como la información relacionada con clientes, empleados, tipos de reserva y franquicias mismas. A continuación se detallan los elementos principales de la base de datos:


**TABLAS:**

Tabla		Columna		Tipo De Datos
Clientes	ID_Cliente	INT AUTO_INCREMENT PRIMARY KEY
		Nombre 		VARCHAR(50) NOT NULL
		Nacimiento	DATE NOT NULL
		Edad 		INT NOT NULL
		Email 		VARCHAR(100) NOT NULL UNIQUE
		Telefono 	VARCHAR(50) NOT NULL

 ![image](https://github.com/user-attachments/assets/d5949137-4ec2-4335-8d4a-740bb39ec04c)


Tabla		Columna		Tipo De Datos
Franquicia	ID_Franquicia	INT AUTO_INCREMENT PRIMARY KEY
		Nombre	 	VARCHAR(50) NOT NULL
		Direccion	VARCHAR(100) NOT NULL
		Email 		VARCHAR(100) NOT NULL UNIQUE
		Telefonos 	VARCHAR(50) NOT NULL

![image](https://github.com/user-attachments/assets/f0950a51-ba5d-4e6c-87be-263a70f035ee)

Tabla		Columna		Tipo De Datos
Empleados	ID_Empleados 	INT AUTO_INCREMENT PRIMARY KEY
		ID_Franquicia 	INT
		Nombre 		VARCHAR(100) NOT NULL
		Telefono 	VARCHAR(20) NOT NULL,
		Email 		VARCHAR(100) NOT NULL UNIQUE,
		Descripcion 	TEXT,
		FOREIGN KEY (ID_Franquicia) REFERENCES franquicia (ID_Franquicia)	

![image](https://github.com/user-attachments/assets/44745361-1eb8-44d1-8455-b9db5b7f28cd)

Tabla		Columna		Tipo De Datos
Tipo Reserva	ID_TipoReserva	INT AUTO_INCREMENT PRIMARY KEY
		Tipo 		VARCHAR(100) NOT NULL
		Descripcion 	TEXT,
		Disponible 	boolean
		Cancelacion 	datetime

![image](https://github.com/user-attachments/assets/7e03bcab-aef6-4477-bced-6346c330aa70)

Tabla		Columna		Tipo De Datos
Membresia	ID_Membresia 	INT AUTO_INCREMENT PRIMARY KEY
	    	Tipo 		VARCHAR(100) NOT NULL
	   	Descripcion 	TEXT
	   	Precio 		DECIMAL(10, 2) NOT NULL

![image](https://github.com/user-attachments/assets/e73019ca-a17c-40b6-a216-10ef229aef48)

Tabla		Columna		Tipo De Datos
Tipo de Clase	ID_TipoClase 	INT AUTO_INCREMENT PRIMARY KEY
		Tipo		VARCHAR(100) NOT NULL
		Descripcion	TEXT
		Disponible 	boolean
		Cancelacion 	datetime

![image](https://github.com/user-attachments/assets/a9bc1155-b7cb-41e0-95fa-93311ab6fe5b)

Tabla	Columna	Tipo De Datos
Horario	ID_Horario 	INT AUTO_INCREMENT PRIMARY KEY
	ID_TipoClase 	INT NOT NULL
	ID_TipoReserva 	INT NOT NULL
	Horario 	VARCHAR(100) NOT NULL
	Descripcion 	TEXT,
	Disponible 	boolean default ('Si o No')
	Cancelacion 	DATETIME DEFAULT (current_timestamp)
	FOREIGN KEY (ID_TipoClase) references TipoClase(ID_TipoClase)	
	FOREIGN KEY (ID_TipoReserva) references TipoReserva(ID_TipoReserva)	

![image](https://github.com/user-attachments/assets/6734b480-8fab-4d0e-b562-83a64b45ef3d)

Tabla	Columna		Tipo De Datos
Reserva	ID_Reserva 	INT AUTO_INCREMENT PRIMARY KEY
	ID_Cliente 	INT NOT NULL
	ID_Empleados 	INT NOT NULL
	ID_Franquicia 	INT NOT NULL
	ID_TipoReserva 	INT NOT NULL
	ID_TipoClase 	INT NOT NULL
	ID_Horario	INT NOT NULL
	Fecha datetime 	NOT NULL default (current_date)
	Cancelacion 	datetime
	FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente)	
	FOREIGN KEY (ID_Empleados) REFERENCES Empleados(ID_Empleados)	
	FOREIGN KEY (ID_Franquicia) REFERENCES Franquicia(ID_Franquicia)	
	FOREIGN KEY (ID_TipoReserva) REFERENCES TipoReserva(ID_TipoReserv),	
	FOREIGN KEY (ID_TipoClase) REFERENCES TipoClase(ID_TipoClase)	
	FOREIGN KEY (ID_Horario) REFERENCES Horario(ID_Horario)	

![image](https://github.com/user-attachments/assets/f7edd80c-27aa-4445-985f-502a922802a8)

Tabla		Columna		Tipo De Datos		
Reserva		ID_HechoReserva INT AUTO_INCREMENT PRIMARY KEY		
	    	ID_Cliente 	INT NOT NULL,  -- Relación con la tabla Cliente		
	    	ID_Franquicia 	INT NOT NULL, -- Relación con la tabla Franquicia		
	    	ID_Empleados 	INT NOT NULL, -- Relación con la tabla Empleados		
	    	ID_TipoReserva 	INT NOT NULL, -- Relación con la tabla TipoReserva		
	    	ID_TipoClase 	INT NOT NULL, -- Relación con la tabla TipoClase		
	    	ID_Horario 	INT NOT NULL, -- Relación con la tabla Horario		
	    	ID_Membresia 	INT NOT NULL, -- Relación con la tabla Membresia		
	    	Fecha 		DATETIME NOT NULL,  -- Fecha de la reserva		
	    	Costo 		DECIMAL(10, 2) NOT NULL,  -- Costo de la reserva		
	    	Asistio 	BOOLEAN NOT NULL DEFAULT FALSE, -- Indicador de si el cliente asistió o no a la clase		
	    	FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente),			
	    	FOREIGN KEY (ID_Franquicia) REFERENCES Franquicia(ID_Franquicia),			
	    	FOREIGN KEY (ID_Empleados) REFERENCES Empleados(ID_Empleados),			
	    	FOREIGN KEY (ID_TipoReserva) REFERENCES TipoReserva(ID_TipoReserva),			
	    	FOREIGN KEY (ID_TipoClase) REFERENCES TipoClase(ID_TipoClase),			
	    	FOREIGN KEY (ID_Horario) REFERENCES Horario(ID_Horario),			
	    	FOREIGN KEY (ID_Membresia) REFERENCES Membresia(ID_Membresia)			

![image](https://github.com/user-attachments/assets/5f81acce-afaa-4f15-abc7-2b09870ac6ed)

Tabla		Columna	Tipo De Datos
Reserva	 	ID_Audit 	INT AUTO_INCREMENT PRIMARY KEY
	    	ID_Membresia 	INT
	    	Tipo 		VARCHAR(100)
	    	Descripcion 	TEXT,
	    	Precio 		DECIMAL(10, 2)
	    	FechaCambio 	DATETIME DEFAULT CURRENT_TIMESTAMP
	   	Accion 		VARCHAR(50)
	    	FOREIGN KEY (ID_Membresia) REFERENCES Membresia(ID_Membresia)	

![image](https://github.com/user-attachments/assets/b7aa68b5-419b-4d05-ba22-90e8b4226fb5)



**VISTAS:**

-- Vista Reservas: Contar el número de reservas por cliente --

SELECT 
*
FROM vista_reservas;

La vista Vista_Reservas utiliza las siguientes tablas:

Reserva: Contiene información sobre las reservas realizadas por los clientes.
Cliente: Contiene información sobre los clientes del gimnasio.
Franquicia: Contiene información sobre las franquicias donde se realizan las reservas.
TipoClase: Contiene información sobre los tipos de clase disponibles.
Horario: Contiene información sobre los horarios de las clases.


-- VistaReservasCliente: Obtener el nombre del empleado que realizó la mayor cantidad de reservas para cada cliente --

SELECT *
FROM Vista_Reservas_Cliente;

La vista Vista_Reservas_Cliente utiliza las siguientes tablas:

Cliente: Contiene información sobre los clientes del gimnasio.
Reserva: Contiene información sobre las reservas realizadas por los clientes.
Franquicia: Contiene información sobre las franquicias donde se realizan las reservas.
TipoClase: Contiene información sobre los tipos de clase disponibles.
Horario: Contiene información sobre los horarios de las clases.


-- Esta vista muestra información sobre los empleados y la franquicia en la que trabajan, esta ordenado por cada franquicia --

SELECT *
FROM Vista_Empleados_Franquicia;

La vista Vista_Empleados_Franquicia utiliza las siguientes tablas:

Empleados: Contiene información sobre los empleados que trabajan en las franquicias.
Franquicia: Contiene información sobre las diferentes franquicias del gimnasio.



-- Vista Reservas Franquicia: Obtener el tipo de clase más reservada en cada franquicia --

SELECT 
*
FROM Vista_Reservas_Franquicia;

La vista Vista_Reservas_Franquicia utiliza las siguientes tablas:

Franquicia: Contiene información sobre las diferentes franquicias del gimnasio.
Reserva: Contiene información sobre las reservas realizadas por los clientes.
Cliente: Almacena información sobre los clientes que realizan las reservas.
TipoClase: Contiene información sobre los tipos de clases disponibles en el gimnasio.
Horario: Contiene información sobre los horarios disponibles para las clases y reservas.


-- esta vista te proporcionará una lista con los nombres de las franquicias y sus respectivos ingresos totales calculados a partir de las reservas realizadas en cada una --

SELECT 
*
FROM Ingresos_Totales_Franquicia;

La vista Ingresos_Totales_Franquicia utiliza las siguientes tablas:

Franquicia: Contiene información sobre las diferentes franquicias del gimnasio.
Reserva: Contiene información sobre las reservas realizadas por los clientes.
Cliente: Almacena información sobre los clientes que realizan las reservas.
TipoClase: Contiene información sobre los tipos de clases disponibles en el gimnasio.
Costos: Contiene información sobre los pagos realizados por los clientes para cada clases.



**FUNCIONES:**

-- La función ClienteConMayorReservas que has mostrado está diseñada para encontrar el nombre del cliente con la mayor cantidad de reservas en una base de datos --

DROP FUNCTION IF EXISTS APP_GYMBRO.ClienteConMayorReservas;
CREATE FUNCTION APP_GYMBRO.ClienteConMayorReservas

Nombres de Tablas y Campos: Cliente, reserva, ID_Cliente, Nombre. 


-- Esta función ContarReservasCanceladas cuenta el número de filas en la tabla Reserva donde la columna Cancelacion no es NULL, lo que indica que la reserva ha sido cancelada, cuenta el total de reservas canceladas --

CREATE FUNCTION contar_reservas_canceladas()

Nombres de Tablas y Campos: Reserva y Cancelacion.

**TIGGERS:**

-- Cada vez que se inserta un nuevo registro en la tabla reserva, este TRIGGER se activará y actualizará automáticamente la cantidad de reservas del cliente correspondiente --

CREATE TRIGGER AfterInsertReserva
AFTER INSERT ON reserva
Actualiza la cantidad de reservas del cliente


-- Creación del trigger que limita una reserva por cliente por día --

CREATE TRIGGER UnicaReservaPorDia
BEFORE INSERT ON Reserva
Verifica si ya existe una reserva para el mismo cliente en el mismo día, si ya existe una reserva, levanta un error y no permite la inserción


-- Se activa después de cada actualización en la tabla Membresia y registra los datos antiguos antes del cambio, indicando que la acción fue una actualización --

CREATE TRIGGER after_membresia_update
AFTER UPDATE ON Membresia


-- Se activa después de cada inserción en la tabla Membresia y registra los nuevos datos insertados, indicando que la acción fue una inserción --

CREATE TRIGGER after_membresia_insert
AFTER INSERT ON Membresia




Problemática Resuelta:
Esta base de datos permite gestionar eficientemente el proceso de reserva en gimnasios, desde la información de los clientes y empleados hasta la disponibilidad de sector/clase y horarios. Algunos aspectos que aborda incluyen:

Registro de clientes y empleados involucrados en el proceso de reserva.
Clasificación de las reservas según su tipo.
Gestión de la disponibilidad de clases, horarios y sucursal en cada gimnasio.
Registro detallado de las reservas realizadas, incluyendo la fecha, cliente, franquicia, empleado y tipo de reserva.
En resumen, esta base de datos proporciona una estructura para organizar y gestionar eficientemente las operaciones de reserva en gimnasios, lo que contribuye a mejorar el servicio ofrecido a los clientes y optimizar las operaciones del gimnasio. */

![image](https://github.com/user-attachments/assets/5c73027b-7851-4e28-9953-e1eba47bae7c)
