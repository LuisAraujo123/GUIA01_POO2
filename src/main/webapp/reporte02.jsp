<%-- 
    Document   : reporte02
    Created on : Jul 23, 2017, 11:33:10 PM
    Author     : bernardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel='stylesheet' href='${pageContext.request.contextPath}/resources/lib/css/estilo.css'>
        <link rel='stylesheet' href='webjars/bootstrap/3.2.0/css/bootstrap.min.css'>
        <script type="text/javascript" src='webjars/jquery/2.1.4/jquery.min.js'></script>
        <script type="text/javascript" src='webjars/bootstrap/3.2.0/js/bootstrap.min.js'></script>        
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/lib/pdfjs/build/pdfj.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/lib/js/pdfobject.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/lib/js/repo01.js"></script>
        <style>
            
            .pdfobject-container {
                width: 100%;
                height: 600px;
                margin: 2em 0;
            }
            
            .pdfobject { border: solid 1px #666; }
            
        </style>
    </head>
    <body>
        <div class="">
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Reportes <span class="glyphicon glyphicon-user pull-right"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="index.jsp">Inicio <span class="glyphicon glyphicon-cog pull-right"></span></a></li>
                        <li class="divider"></li>
                        <li><a href="reporte01.jsp">Reporte 01 <span class="glyphicon glyphicon-heart pull-right"></span></a></li>
                        <li class=""></li>
                        <li><a href="reporte02.jsp">Reporte 02 <span class="glyphicon glyphicon-stats pull-right"></span></a></li>
                        <li class="divider"></li>
                        <li><a href="reporte03.jsp">Reporte 03 <span class="glyphicon glyphicon-log-out pull-right"></span></span></a></li>
                    </ul>
                </li>
            </ul>
            <div class="span3 well">
                <center>
                    <a href="#" id='repo02' data-ctxt='${pageContext.request.contextPath}' 
                       data-repo='repo02persVisi' data-prms='apelPers=apel'>
                        <img src="images/pdf.jpg" 
                             name="pdf" width="140" height="140" class="img-circle"></a>
                    <h3>Reporte 02 - Visitas de una persona a una Unidad Organizativa</h3>
                </center>
            </div>
            <!-- Modal -->
            <div class="modal fade" id="ModaRepo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                            <h4 class="modal-title" id="myModalLabel">Aca se muestra el reporte</h4>
                        </div>
                        <div class="modal-body">
                            <div id="pdf"></div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Salir</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
        $(document).ready(function(){
            $("#repo02").fnOpenModaRepo();
        });
        </script>
    </body>
    
</html>
