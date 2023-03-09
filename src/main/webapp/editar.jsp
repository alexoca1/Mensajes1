<%-- 
    Document   : editar
    Created on : 24 feb 2023, 14:40:29
    Author     : casa
--%>

<%@page import="com.mycompany.mensajes.Mensaje"%>
<%@page import="com.mycompany.mensajes.MensajeDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar mensaje</title>
        <link rel="stylesheet" 
              href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" 
              integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
              crossorigin="anonymous">
    </head>
    <body>
        <!-- Modal -->

        <div class="modal-dialog">
            <div class="modal-content">
                <form action="editar.jsp" method="POST">
                    <div class="modal-header">
                        <h5 class="modal-title" >Editar Mensaje</h5>


                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">

                        <div class="form-group">
                            <input type="hidden" name="id" value="<%=request.getParameter("id")%>"

                                   <label >ingrese el mensaje</label>
                            <textarea  class="form-control" name="mensaje" rows="3"><%=request.getParameter("mensaje")%>  
                            </textarea>

                        </div>
                        <div class="form-group">
                            <label >Autor</label>
                            <input type="text" name="autor" class="form-control"  value="<%=request.getParameter("autor")%>"
                                   </div>


                        </div>
                        <div class="modal-footer">
                            <a href="index.jsp" type="submit" class="btn btn-danger" name=>Regresar</a>
                            <button type="submit" class="btn btn-primary" name="enviar">Guardar cambios</button>
                        </div>
                </form>

            </div>
        </div>
        <%
                MensajeDao mensajeDao = new MensajeDao();
                
                String id = request.getParameter("id");
                
                if (request.getParameter("enviar") != null) {

                        Mensaje mensaje = new Mensaje(
                                Integer.parseInt(id),
                                request.getParameter("mensaje"),
                                request.getParameter("autor")
                        );
                        mensajeDao.editar(mensaje);
                }
        %>
    </body>
</html>
