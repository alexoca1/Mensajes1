<%-- 
    Document   : index
    Created on : 22 feb 2023, 10:40:51
    Author     : casa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                <div class="modal-header">
                    <h5 class="modal-title" >Crear Mensaje</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label >ingrese el mensaje</label>
                            <textarea  class="form-control" name="mensaje" rows="3"></textarea>

                        </div>
                        <div class="form-group">
                            <label >Autor</label>
                            <input type="text" name="mensaje" class="form-control" >
                        </div>


                    </form>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary" name="enviar">Enviar</button>
                </div>
            </div>
        </div>

    </body>
</html>
