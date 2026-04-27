<?php
$conexion = new mysqli("localhost", "root", "", "carrera");

if ($conexion->connect_error) {
    die("Error de conexión: " . $conexion->connect_error);
}

$sql = "SELECT id_usuario, nombre, email, contrasena FROM usuarios";
$resultado = $conexion->query($sql);

if ($resultado->num_rows > 0) {
    echo "<h2>Lista de usuarios</h2>";
    echo "<table border='1'>";
    echo "<tr><th>ID</th><th>Nombre</th><th>Email</th><th>Contraseña</th></tr>";

    while($fila = $resultado->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . $fila["id_usuario"] . "</td>";
        echo "<td>" . $fila["nombre"] . "</td>";
        echo "<td>" . $fila["email"] . "</td>";
        echo "<td>" . $fila["contrasena"] . "</td>";
        echo "</tr>";
    }

    echo "</table>";
} else {
    echo "No hay usuarios.";
}

$conexion->close();
?>