<%-- 
    Document   : sensor
    Created on : 21 set. 2023, 14:21:15
    Author     : nicolas pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="ramdom.simulador" %>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <title>Simulador de Sensor</title>
    
    
    
    
     <script>
        // Función para actualizar el valor del sensor
        function updateSensorData() {
            const sensorValue = <%= simulador.LecturaDeHumedad() %>;
            document.getElementById("sensor-data").textContent = `Valor del sensor: ` + sensorValue;
            
            // Programa la próxima actualización después de 1 segundo
            setTimeout(updateSensorData, 1000);
        }

        // Iniciar la primera actualización al cargar la página
        window.onload = function() {
            updateSensorData();
        };
    </script>
</head>
<body>
    <h1>Dato del Sensor Virtual</h1>
    <p id="sensor-data">Esperando datos...</p>
</body>
</html>
