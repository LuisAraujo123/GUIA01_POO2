<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        <div class="container">
            <div class="span3 well">
                <center>
                    <a href="#" id='testBton' data-ctxt='${pageContext.request.contextPath}' 
                       data-repo='repo01unidOrga' data-prms=''>
                        <img src="images/pdf.jpg" 
                             name="pdf" width="140" height="140" class="img-circle"></a>
                    <h3>Mostrar el reporte</h3>
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
    </body>
</html>
