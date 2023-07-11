// Configuración de la base de datos
var mysql = require('mysql');
var connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '1234',
  database: 'veterinaria'
});

// Conexión a la base de datos
connection.connect(function(err) {
  if (err) {
    console.error('Error al conectar a la base de datos: ' + err);
    return;
  }
  console.log('Conexión exitosa a la base de datos');
});

module.exports = {connection}