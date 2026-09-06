# Introduccion a Base de Datos Teoria
## SURGIMIENTO DE LAS BASES DE DATOS
# Antecedentes
Desde tiempos remotos, el hombre ha registrado datos en algún tipo de soporte.
Por ejemplo: piedra, madera, papel, tablillas de arcilla, libros y, en épocas más recientes, cintas magnéticas, discos, etc.    
¿Para qué?
Control
Memoria
Conocimiento

¿Por qué se ha desarrollado la tecnología del registro de datos? Para que los datos puedan:
organizarse de manera sistemática, 
estar relacionados, 
protegerse ante amenazas, 
administrarse de manera eficiente,
procesarse en grandes volúmenes.

# Cronología
Época antigua
Los datos se registraban en todo medio posible y de perdurabilidad media. Luego, se almacenaban en lo que hoy entendemos como bibliotecas.

¿Qué se registraba? Muchos de los registros encontrados han sido sobre cosechas y censos. ¿Con qué fin? Control.

Desde luego, en esos medios primitivos, la búsqueda era lenta y poco eficaz.

Siglo XIX
En 1884, el famoso Herman Hollerith creó la máquina automática de tarjetas perforadas, que se utilizó para realizar un censo de forma más rápida. El asiento documental era la misma tarjeta.

1950
Uso de las cintas magnéticas, acceso secuencial.

1960
Uso de los discos con acceso aleatorio (¿?).

Se estableció una alianza entre IBM y American Airlines para desarrollar SABRE: un sistema que gestionaba las reservas de vuelos, las transacciones y la información de los pasajeros de la aerolínea. 
¿Y? 
Es importante porque una base de datos sustenta un negocio.

1970
Edgar Frank Codd formuló los conceptos de las “Bases de Datos Relacionales”. ¿Basándose en qué? Conjuntos.

Se inicia la creación del SQL (Structured Query Language).

Basándose en los trabajos de Codd, Lawrence (Larry) Ellison desarrolló el Relational Software System, que pasó a formar parte de Oracle Corporation y ofreció un sistema de gestión de bases de datos relacional con el mismo nombre.

1980
Se inician los trabajos para desarrollar las bases de datos orientadas a objetos.

Las bases de datos relacionales se posicionan como la tecnología de punta por estar basadas en SQL, un lenguaje de consulta declarativo.

Se inician los trabajos para llevar a cabo transacciones: “se realizan todas las operaciones o ninguna”.

2000+
Se introduce el XML (eXtensible Markup Language), en un principio, como un formato de intercambio de datos electrónicos (EDI). (Hijo de SGML y nieto de HTML)

Posteriormente, se explora la posibilidad de utilizar SQL junto con XML y se definen las formas de importar y guardar datos XML en una base de datos SQL.

Por lo anterior, se desarrollará XQuery (lenguaje de consulta XML) para el acceso concurrente a datos en SQL y a documentos XML.

Pero JSON llegó para desbancar a XML.

El desarrollo de Internet obliga a la industria a contar con una amplia capacidad de almacenamiento.

Se buscan protocolos como el OAI-PMH (Open Archives Initiative – Protocol for Metadata Harvesting) para compartir datos de manera oportuna y confiable entre distintas entidades sociales.

Para mejorar la capacidad de respuesta y al contar con hardware más barato, se innova en el uso de bases de datos en memoria y de discos de estado sólido.

## Definición de las Bases de Datos
### Definición
Una base de datos la podemos considerar como:
Conjunto de datos relevantes
Pertenecientes a un mismo contexto
Organizados de forma sistemática
Almacenados sistemáticamente en medios persistentes
Representan entidades y sus interrelaciones.

Para el caso de las BD relacionales:
Los datos están estructurados en tablas.
Las tablas se componen de campos y registros.
Adicionalmente, se cuenta con vistas, triggers, stored procedures y otros tipos de objetos (No OOP).

### Otras características
Lo que un sistema de bases de datos debería cumplir con:

Independencia lógica y física del medio de registro.
Redundancia mínima.
Acceso concurrente por múltiples usuarios.
Integridad de los datos.
Consultas complejas optimizadas.
Seguridad de acceso y auditoría.
Respaldo y recuperación.
### Tipos
Según las operaciones sobre los datos:

Bases de datos estáticas
De sólo lectura.
Primordialmente almacenan datos históricos.
Ejemplo: para procesos de inteligencia de negocios.

Bases de datos dinámicas
Los datos se modifican con el tiempo.
Se aplican todas las operaciones básicas: consulta, inserción, actualización y borrado.
Ejemplo: es la base de datos de cualquier sistema.


Según el contenido

Bases de datos referenciados
Sólo contienen un subrogante o una referencia a la fuente primaria.
Muestran un mínimo de datos para localizar la fuente.
Ejemplo: catálogo bibliográfico.

Bases de datos de fuente completa no textual
Almacenan los datos necesarios para que un registro tenga sentido.
Puede tener varios índices, según el aspecto que se desea localizar.
Su indexación puede basarse en cualquier tipo de dato.
Ejemplo: base de datos relacional común.

Bases de datos de texto completo
Almacenan las fuentes primarias.
Mantienen todo el contenido de la fuente.
Su indexación se basa en palabras.
Ejemplo: Wiki.

### Otros tipos
Bases de datos jerárquicas
Datos organizados en forma de árbol invertido.
Un nodo padre puede tener varios hijos.
El nodo que no tiene padres se llama raíz.
Los nodos que no tienen hijos se conocen como hojas.
Pueden tener una gran redundancia de datos.
Ejemplo: Árbol multicamino, como un árbol B.

Bases de datos transaccionales
Registran y entregan datos a altas velocidades.
Orientadas a entornos de análisis de calidad o de datos de producción.
La redundancia y la duplicación no constituirían un problema.
Ejemplo: PEMEX, Amazon, Walmart.

Bases de datos relacionales
Basadas en los trabajos de Edgar Frank Codd.
Su idea fundamental es el uso de relaciones.
El lugar y la forma en que se almacenen los datos no son relevantes.
Por lo general, se consultan mediante SQL.
Para hacer un buen diseño, habría que normalizarla.
Ejemplo: Es la base de datos de cualquier sistema.

### Otras clasificaciones
Bases de datos multidimensionales
Desarrolladas para aplicaciones concretas.
No se diferencian mucho de las relacionales.
En este caso, los campos de una tabla pueden ser de dos tipos: dimensiones o métricas.
Ejemplo: cubos OLAP. 

Bases de datos orientadas a objetos
Almacenan objetos completos (estado y comportamiento).
Por tanto, se pueden definir operaciones sobre los datos como parte de la definición.
Ejemplo: ObjectDB

## ELEMENTOS DE UN SISTEMA MANEJADOR DE BASE DE DATOS
### Macro Partes
Base de Datos
Datos organizados en archivos, resguardados en un medio de almacenamiento perdurable, para lograr la persistencia de los datos. Archivo

Manejador de la base de datos
Pieza de software que administra los datos de la base de datos. Ejecuta las llamadas en SQL, el lenguaje de programación propio de las bases de datos relacionales. Marca / MySQL

Administrador del manejador de la base de datos
Pieza de software que permite al usuario acceder al administrador. Cliente / phpMyAdmin
### Estructura básica
Dato
De forma genérica, un dato es un hecho, un fundamento o un antecedente.
En bases de datos lo definen tres partes (fundamentalmente):
Nombre, Tipo, Tamaño
Registro
Conjunto de datos.
Tabla
Conjunto de registros.
### ¿Dato e información, es lo mismo?
Información
Conjunto de datos ordenados en un formato y contexto determinados que disminuye la incertidumbre y, por ello, permite al receptor tomar decisiones.

Implicaciones:
La información es subjetiva.
Los repositorios o bases de datos son información en “potencia”, pero se convierten en “acto” hasta el momento en que un humano la utiliza.

### Objetos
Tabla
Es la unidad básica de almacenamiento de registros; es decir, lo más pequeño que puede almacenarse.

Vista / Read-only
SQL almacenado, como si fuera una **tabla**, que normalmente se usa para mostrar un subconjunto de datos o la unión de entidades.

Procedimientos / Stored procedures
SQL almacenado, como **código ejecutable** a voluntad. Son pequeños programas que se ejecutan en el contexto del manejador de la base de datos.

Eventos / Jobs, Crons
SQL almacenado, que se ejecuta en una **marca de tiempo**. Son tareas programadas que pueden asociarse a SP.

Disparadores / Triggers
SQL almacenado, que se ejecuta ante un **evento de integridad**. Es código que ayuda a mantener la integridad de los datos ante operaciones de inserción, modificación o borrado. Suelen estar asociados a SP.

Constraints
Condiciones o **reglas de negocio** respecto de los datos que deben cumplirse para poder operar sobre ellos.

Formularios
Formas de captura, visualización, modificación y borrado de datos contenidos en la misma base de datos, ejecutadas en el contexto del manejador.

Usuarios
Credenciales de acceso a la base de datos con los privilegios pertinentes.

