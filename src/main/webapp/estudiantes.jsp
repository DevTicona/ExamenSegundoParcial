<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Estudiante"%>
<%
    List<Estudiante> estudiantes = (List<Estudiante>) request.getAttribute("estudiantes");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Estudiantes</title>
        <link rel="stylesheet" type="text/css" href="estilos.css">
    </head>
    <body>
        <div class="container">
            <div class="encabezado">
                <p>
                SEGUNDO PARCIAL <br> 
                Nombre: Primo Ticona Callizaya <br>
                CI: 9093411 LP
            </p>
            </div>
            <div class="title">
                <h1>Registro Dia Del Internet</h1>
            </div>
            <p><a href="EstudianteController?action=add" class="button">Nuevo</a></p>
            
            <table class="styled-table">

                <tr>
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Apellidos</th>
                    <th>Seminario</th>
                    <th>Confirmado</th>
                    <th>Fecha Inscripcion</th>
                    <th></th>
                    <th></th>
                </tr>

                <c:forEach var="item" items="${estudiantes}">

                    <tr>
                        <td>${item.id}</td>
                        <td>${item.nombre}</td>
                        <td>${item.apellidos}</td>
                        <td>${item.seminario}</td>
                        <td>
                            <input type="checkbox" disabled="disabled" ${item.confirmado ? 'checked' : ''} />
                        </td>
                        <td>${item.fecha_inscripcion}</td>
                        <td><a href="EstudianteController?action=edit&id=${item.id}">Editar</a></td>
                        <td><a href="EstudianteController?action=delete&id=${item.id}">Eliminar</a></td>
                    </tr>

                </c:forEach>

            </table>
        </div>
    </body>
</html>
