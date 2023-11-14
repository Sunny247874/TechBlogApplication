<%-- 
    Document   : Error_Page
    Created on : 31-Oct-2023, 2:55:56 pm
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sorry ! Somthing went Wrong...</title>
        
        
         <!--CSS-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link  rel="stylesheet" type="text/css" media="all" href="CSS/mystyle.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .banner-background{
               clip-path: polygon(0 0, 100% 0, 100% 30%, 100% 100%, 77% 97%, 36% 100%, 0 96%, 0% 30%);
            }
            
        </style>
    </head>
    <body>
        <div class="container text-center">
            <img src="image/warning.png" class="img-fluid" alt="Somthing Wrong"/>
            <h3 class="display-3">Sorry ! Something went wrong...</h3>
            <%= exception%>
            <a href="index.jsp" class="btn primary-background btn-lg text-white mt-3">Home</a>
        </div>
    </body>
</html>
