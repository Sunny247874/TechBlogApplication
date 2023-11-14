<%-- 
    Document   : index
    Created on : 27-Oct-2023, 3:14:45 pm
    Author     : LENOVO
--%>

<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TechBlog</title>
         
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
        
           <!--              NAVBAR-->
           <%@include file="normal_Navbar.jsp"%>
                
           
            <!--           Banner-->
            <div class="container-fluid p-0 m-0">
                
                <div class="jumbotron primary-background text-white">
                    <div class="container">
                    <h3 class="display-3">Welcome to TechBlog </h3>
                    <p>Welcome to technical blog,world of technology A programming language is a system of notation for writing computer programs.[1] Most programming languages are text-based formal languages, but they may also be graphical. They are a kind of computer language.</p>
                    <p>The description of a programming language is usually split into the two components of syntax (form) and semantics (meaning), which are usually defined by a formal language.</p>
                    
                    <button class="btn btn-outline-light btn-lg"> <span class="fa fa-share-square-o"></span> start ! its Free</button>
                    <a  href="Login_Page.jsp"class="btn btn-outline-light btn-lg"> <span class="fa fa-user"></span> Login</a>
                    
                    </div>
                </div>
                
            </div>
                 <!--CARDS-->
            
                 <div class="container">
                     
                     <div class="row mb-2">
                         
                         <div class="col-md-4 mb-2">
                             <div class="card">
                                <div class="card-body">
                                  <h5 class="card-title">Java Programming</h5>
                                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                  <a href="#" class="btn primary-background text-white">Read More</a>
                                </div>
                              </div>
                         </div>
                         
                         <div class="col-md-4 mb-2">
                             <div class="card">
                                <div class="card-body">
                                  <h5 class="card-title">Advanse Java</h5>
                                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                  <a href="#" class="btn primary-background text-white">Read More</a>
                                </div>
                              </div>
                         </div>
                         
                         <div class="col-md-4 mb-2">
                             <div class="card">
                                <div class="card-body">
                                  <h5 class="card-title">Pythan Programming</h5>
                                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                  <a href="#" class="btn primary-background text-white">Read More</a>
                                </div>
                              </div>
                         </div>
                     </div>
                      
                 </div>
                 
                 <div class="container">
                      <div class="row mb-2">
                         
                         <div class="col-md-4 mb-2">
                             <div class="card">
                                <div class="card-body">
                                  <h5 class="card-title">Data Structure & Algorithm</h5>
                                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                  <a href="#" class="btn primary-background text-white">Read More</a>
                                </div>
                              </div>
                         </div>
                         
                         <div class="col-md-4 mb-2">
                             <div class="card">
                                <div class="card-body">
                                  <h5 class="card-title">MySQL & SQL</h5>
                                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                  <a href="#" class="btn primary-background text-white">Read More</a>
                                </div>
                              </div>
                         </div>
                         
                         <div class="col-md-4 mb-2">
                             <div class="card">
                                <div class="card-body">
                                  <h5 class="card-title">HTML,CSS,JS</h5>
                                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                  <a href="#" class="btn primary-background text-white">Read More</a>
                                </div>
                              </div>
                         </div>
                     </div>
                     
                 </div>
            
        
            <!--  JAVASCRIPT-->

    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
   <script src="JS/myjavascript.js" type="text/javascript"></script>    
    </body>
</html>
