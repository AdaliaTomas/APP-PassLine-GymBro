!!! QUEREMOS DARTE LA BIENVENIDA GYM BROTHERR !!!

¡Hola a todos!

Es un honor darles la bienvenida a este nuevo y emocionante proyecto de nuestro gimnasio. Aquí no solo queremos que entrenen y se sientan a gusto y seguros con sigo mismo, sino que también se sientan como en casa. Este es un espacio donde estaremos a disposicon para poder desarrollar buenos hábitos, desde lo fisico, con entrenamientos y cuidados del cuerpo como masajes relajantes, y terapias alternativas musculares, sino que tambien apoyamos a mejorar su salud alimenticia y disfrutar de entrenamientos que los desafíen y motiven.

Pero lo más importante, queremos que se sientan rodeados de amigos, en un ambiente cálido y acogedor. Este gimnasio es más que un lugar para entrenar; es una comunidad donde cada uno de ustedes puede crecer y alcanzar sus objetivos personales, siempre con el apoyo de quienes los rodean.

¡Bienvenidos a su nuevo hogar de bienestar y amistad! Estamos emocionados de compartir este viaje con ustedes.

![image](https://github.com/user-attachments/assets/7aa4f9fd-a81d-45ca-9caa-5c32d716b292)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

Entrega de proyecto final
@Alumno -- Adalia Tomas

@Comision -- 51790

@Tutor -- Ariel Annone

@Docente -- Anderson Michel Torres

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

# App Gimnasio PassLines GymBro

Problema:
Nuestro equipo de desarrollo está trabajando en un sistema de gestión de reservas para un gimnasio llamado PassLine GymBro, y nos enfrentamos a la necesidad de diseñar una base de datos eficiente que pueda manejar todas las operaciones relacionadas con las reservas de manera óptima.

Descripción del Problema:
Gestión de Clientes y Empleados: Necesitamos una base de datos que nos permita registrar la información de los clientes que realizan reservas, así como de los empleados involucrados en el horario y tipo de clase que se reserva, profesores deportivos o coach de salon.

Gestión de Tipos de Reserva: Es importante poder clasificar las reservas según su tipo, ya sea una reserva estándar (horario de salon de maquinas), una reserva para eventos especiales (tipo de clase personalizada). Esto nos ayudará a organizar mejor el flujo de trabajo y adaptar nuestros servicios según las necesidades del cliente.

Gestión de Disponibilidad: La base de datos debe permitirnos registrar la disponibilidad de cupos por rango horario en cada franquicia (sucursal/gimnasio), para poder gestionar su capacidad y estado (ocupado o disponible). Esto es fundamental para garantizar una experiencia confortante y eficiente a los usuarios y evitar conflictos de reservas.

Registro de Reservas: Necesitamos un sistema que pueda registrar de manera detallada cada reserva realizada, incluyendo la fecha y hora de la reserva, el cliente que la realizó, la franquicia seleccionada, el personal que corresponde segun la franja horaria y el tipo de clase tomada.

Objetivo:
Diseñar e implementar una base de datos relacional que satisfaga todas las necesidades de gestión de reservas para nuestro sistema de gestión de gimnasios. Esta base de datos deberá ser eficiente, escalable y fácil de mantener, permitiendo una gestión ágil y precisa de todas las operaciones relacionadas con las reservas.

Descripción de la Base de Datos - Gestión de Reservas en Gimnasios
Esta base de datos está diseñada para gestionar reservas en gimnasios, así como la información relacionada con clientes, empleados, tipos de reserva y franquicias mismas. A continuación se detallan los elementos principales de la base de datos:

Tablas:
CLIENTE:
Almacena información sobre los clientes que realizan reservas.
Atributos: IDCLIENTE, NOMBRE, FECHA DE NACIMIENTO, EDAD, EMAIL, TELEFONO.

FRANQUICIA:
Almacena información sobre las franquicias disponibles.
Atributos: IDFRANQUICIA, NOMBRE, DIRECCION, EMAIL,TELEFONO.

EMPLEADO:
Contiene información sobre los empleados involucrados en el proceso de reservas.
Atributos: IDEMPLEADO, NOMBRE, TELEFONO, EMAIL, DESCRIPCION, IDFRANQUICIA.

TIPORESERVA:
Define diferentes tipos de reserva para clasificarlas según tipo de clase, personalizada, deportiva, salon.
Atributos: IDTIPORESERVA, TIPO, DESCRIPCION.

RESERVA:
Registra las reservas realizadas por los clientes.
Atributos: IDCLIENTE, IDFRANQUICIA, IDEMPLEADO, IDTIPORESERVA, IDRESERVA, FECHA.

Problemática Resuelta:
Esta base de datos permite gestionar eficientemente el proceso de reserva en gimnasios, desde la información de los clientes y empleados hasta la disponibilidad de sector/clase y horarios. Algunos aspectos que aborda incluyen:

Registro de clientes y empleados involucrados en el proceso de reserva.
Clasificación de las reservas según su tipo.
Gestión de la disponibilidad de clases, horarios y sucursal en cada gimnasio.
Registro detallado de las reservas realizadas, incluyendo la fecha, cliente, franquicia, empleado y tipo de reserva.
En resumen, esta base de datos proporciona una estructura para organizar y gestionar eficientemente las operaciones de reserva en gimnasios, lo que contribuye a mejorar el servicio ofrecido a los clientes y optimizar las operaciones del gimnasio. */

![image](https://github.com/user-attachments/assets/5c73027b-7851-4e28-9953-e1eba47bae7c)
