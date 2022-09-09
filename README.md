# API Rest NodeJS + MySQL

Servicio Rest con operaciones CRUD y estructura básica de ejemplo utilizando NodeJS y MySQL. El servicio consta de endpoint básicos para realizar las operaciones.
### Requisitos

Antes de continuar, debemos asegurarnos de tener instalado y ejecutando en nuestro computador, las siguientes aplicaciones y dependencias:

* NodeJS v14.17.1 o superior
* NPM v6.14.13 o superior
* MySQL

NOTA: Se puede consultar las versiones instaladas utilizando ``node -v``, ``npm -v`` y ``mysql -v`` respectivamente.

### Configuración

Para ejecutar la aplicación, se deben configurar las credenciales para la conexión a la base de datos de MySQL. Para ello debemos modificar el archivo **database.js**. Por defecto
al realizar pruebas en local viene configurado de la siguiente manera:

```
{
    "host": "localhost",
    "port": 3306,
    "database":"animals",
    "user": "root",
    "password": ""
}
```

### Instalación

Para poder ejecutar la aplicación, se deben instalar las dependencias de nodeJS que sean requeridas. Para ello se debe ejecutar el siguiente comando:

```
npm install
```

### Ejecución

Para ejecutar nuestra API, se debe ejecutar el comando:

```
npm start
```

### Ejemplos de uso

Algunos ejemplos para la utilización y pruebas de la API (se sugiere realizar las peticiones a través de Postman) son los siguientes:

* Agregar animales a través de petición POST

```
http://localhost:3000/animals/create

{
	"name":"animal_name",
	"type":"animal_type",
	"age":animal_age
}
```

* Obtener animales registrados en la base de datos mediante GET

```
http://localhost:3000/animals/getAll
```