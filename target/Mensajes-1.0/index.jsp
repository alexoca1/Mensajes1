<%-- 
    Document   : index
    Created on : 22 feb 2023, 10:40:51
    Author     : casa
--%>

<%@page import="java.util.*"%>
<%@page import="com.mycompany.mensajes.Mensaje.*"%>
<%@page import="com.mycompany.mensajes.MensajeDao.*"%>
<%@page import="com.mycompany.mensajes.*"%>
<%@page import="com.mycompany.mensajes.Conexion.*"%>
<%@page import="com.mycompany.mensajes.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mensajes</title>
        <link rel="stylesheet" 
              href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" 
              integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
              crossorigin="anonymous">
    </head>
    <body>

        <!-- Button trigger modal -->
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
            Launch demo modal
        </button>

        <!-- Modal -->

        <div class="modal-dialog">
            <div class="modal-content">
                <form action="index.jsp" method="POST">
                    <div class="modal-header">
                        <h5 class="modal-title" >Crear Mensaje</h5>


                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">

                        <div class="form-group">
                            <label >ingrese el mensaje</label>
                            <textarea  class="form-control" name="mensaje" rows="3"></textarea>

                        </div>
                        <div class="form-group">
                            <label >Autor</label>
                            <input type="text" name="autor" class="form-control" >
                        </div>


                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary" name="enviar">Enviar</button>
                    </div>
                </form>

            </div>

            <%
                    MensajeDao mensajeDao = new MensajeDao();
                    if (request.getParameter("enviar") != null) {

                            Mensaje mensaje = new Mensaje(
                                    request.getParameter("mensaje"),
                                    request.getParameter("autor")
                            );
                            mensajeDao.insertar(mensaje);
                    }
            %>

            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" >Todos los mensajes</h5>
                    <%
                            //   MensajeDao mensajeDao = new MensajeDao();
                            List<Mensaje> mensajes = mensajeDao.seleccionar();
                            Collections.reverse(mensajes);
                            for (Mensaje mensaje : mensajes) {


                    %>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title"><%=mensaje.getAutor()%></h5>

                                <p class="card-text"><%=mensaje.getMensaje()%></p>
                                <p class="blockquote-footer"></cite><%=mensaje.getFecha()%></p>
                                <a href="editar.jsp?id=<%=mensaje.getId()%>&&mensaje=<%=mensaje.getMensaje()%>
                                   &&autor=<%=mensaje.getAutor()%>" 
                                   class="card-link">Editar</a>
                                <a href="eliminar.jsp?id=<%=mensaje.getId()%>" class="card-link">Eliminar</a>
                            </div>
                        </div>

                        <%}%>
                    </form>
                </div>

            </div>

        </div>

    </body>
</html>
