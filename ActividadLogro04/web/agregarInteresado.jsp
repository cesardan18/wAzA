<%-- 
    Document   : agregarInteresado
    Created on : 27 jul. 2023, 15:54:35
    Author     : Daniel
--%>
<%@page import="dao.DAOInteresado" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="it" class="modelo.Interesado" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- LINK BOOSTRAP 5 -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <!-- LINK CSS -->
        <link rel="stylesheet" href="css/style.css"/>
        <!-- LINK FUENTE -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
        <!-- LINK ICONOS-->
        <script src="https://kit.fontawesome.com/15e6c0ec3f.js" crossorigin="anonymous"></script>
        <!-- TITULO -->
        <title>Completado</title>
        <!-- LINK FAVICON -->
        <link rel="icon" type="image/x-icon" href="img/logo.ico">
    </head>
    <body>
        <header class="navbar navbar-expand-lg navbar-dark justify-content-between">
            <nav class="container-fluid">
                <a href="index.html" class="navbar-brand" style="cursor: pointer">
                    <i class="fa-solid fa-code pe-2" style="color: #1470d7"></i>
                    <span class="text-light">Actividad<span style="color: #1470d7"> Virtual</span></span>
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                    <div class="navbar-nav ms-auto">
                        <form class="d-flex">
                            <input class="form-control me-2" type="search" placeholder="Buscar Formulario..." aria-label="Search" style="background-color: #26242d ; border: none; color: whitesmoke">
                            <button class="btn text-light" type="submit">Buscar</button>
                        </form>
                    </div>
                </div>
            </nav>
        </header>

        <div class="row flex-nowrap text-light m-0">
            <!-- MENU LATERAL -->
            <div class="menu col-auto col-md-3 col-xl-2 px-0">
                <div class="d-flex flex-column align-items-center align-items-sm-start px-3 pt-2 text-white min-vh-100">
                    <!-- LINKS PÁGINAS -->
                    <ul class="nav nav-pills flex-column mb-5 align-items-center align-items-sm-start pt-3" id="menu">
                        <li class="nav-item">
                            <a href="index.html" class="nav-link align-middle text-muted px-2">
                                <i class="fa-solid fa-house fs-5"></i> <span class="ms-1 d-none d-sm-inline text-decoration-none fs-5">INICIO</span>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a href="frmInteresados.html" class="nav-link align-middle text-light px-2">
                                <i class="fa-solid fa-file-lines fs-5"></i> <span class="ms-1 d-none d-sm-inline text-decoration-none fs-5">FORMULARIO</span>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a href="..." class="nav-link align-middle text-muted px-2">
                                <i class="fa-solid fa-table-list fs-5"></i> <span class="ms-1 d-none d-sm-inline text-decoration-none fs-5">LISTAR DATOS</span>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a href="index.html" class="nav-link align-middle text-muted px-2">
                                <i class="fa-solid fa-user fs-5"></i> <span class="ms-1 d-none d-sm-inline text-decoration-none fs-5">CESAR DANIEL</span>
                            </a>
                        </li>
                    </ul>
                    <!---->
                </div>
            </div>
            <!---->

            <!-- CUERPO -->
            <%
                if((request.getParameter("nombresApellidos")!=null) && (request.getParameter("empresa")!=null) && 
                (request.getParameter("web")!=null) && (request.getParameter("cargo")!=null) && 
                (request.getParameter("email")!=null) && (request.getParameter("telefono")!=null) && 
                (request.getParameter("leads")!=null) && (request.getParameter("mensaje")!=null)){
                
                try{
                    it.setNombresApellidos(request.getParameter("nombresApellidos"));
                    it.setEmpresa(request.getParameter("empresa"));
                    it.setWeb(request.getParameter("web"));
                    it.setCargo(request.getParameter("cargo"));
                    it.setEmail(request.getParameter("email"));
                    it.setTelefono(request.getParameter("telefono"));
                    it.setLeads(request.getParameter("leads"));
                    it.setMensaje(request.getParameter("mensaje"));
                    
                    int i = DAOInteresado.guardar(it);  
                    
            %>
            <main class="col">
                <!-- FORMULARIO -->
                <article>
                    <section class="row text-center p-5">
                        <div class="col-md-2"></div>
                        <div class="col-md-8 pt-5">
                            <!-- TITULO -->
                            <a href="index.html" class="text-decoration-none text-light fs-5">
                                <i class="fa-solid fa-arrow-left"></i>
                                <span class="d-none d-sm-inline">ﾠVolver</span>
                            </a>
                            <h5>Registro Completo</h5>
                            <!---->
                        </div>
                        <div class="col-md-2"></div>
                    </section>
                </article>
                <!---->
            </main>
            <%   
                } catch(Exception e){
            %>
            <main class="col">
                <!-- FORMULARIO -->
                <article>
                    <section class="row text-center p-5">
                        <div class="col-md-2"></div>
                        <div class="col-md-8 pt-5">
                        <!-- TITULO -->
                        <a href="index.html" class="text-decoration-none text-light fs-5">
                            <i class="fa-solid fa-arrow-left"></i>
                            <span class="d-none d-sm-inline">ﾠVolver</span>
                        </a>
                        <h5>Registro Incompleto</h5>
                        <!---->
                        </div>
                        <div class="col-md-2"></div>
                    </section>
                </article>
                <!---->
            </main>
            <%
                }
                }
            %>
        </div>
    </body>
</html>
