# API Rest NodeJS + MySQL

Servicio Rest con operaciones CRUD y estructura básica de ejemplo utilizando NodeJS y MySQL. El servicio consta de endpoint básicos para realizar las operaciones.
### Requisitos

Antes de continuar, debemos asegurarnos de tener instalado y ejecutando en nuestro computador, las siguientes aplicaciones y dependencias:

* NodeJS v14.17.1 o superior
* NPM v6.14.13 o superior
* MySQL

### Configuración

Para ejecutar la aplicación, se deben configurar las credenciales para la conexión a la base de datos de MySQL. Para ello debemos modificar el archivo **database.js**. Por defecto
al realizar pruebas en local viene configurado de la siguiente manera:

```
{
    "host": "localhost",
    "port": 3306,
    "database":"animalsdb",
    "user": "root",
    "password": ""
}
```

### Instalación

Se deben instalar las dependencias de nodeJS que sean requeridas. Para ello se debe ejecutar el siguiente comando:

```
npm install
```

### Ejecución

Para ejecutar la aplicación se debe ingresar el comando:

```
npm start
```

### Ejemplos de uso

Algunos ejemplos para la utilización y pruebas de la API (se sugiere realizar las peticiones a través de Postman) son los siguientes:

* Obtener todos los animales de la tabla:

```
http://localhost:3000/animals/getAll
```
