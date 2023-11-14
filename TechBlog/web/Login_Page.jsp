<%-- 
    Document   : Login_Page
    Created on : 28-Oct-2023, 1:45:15 pm
    Author     : LENOVO
--%>


<%@page import="com.tech.blog.entities.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        
        
                                  <!--CSS-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link  rel="stylesheet" type="text/css" media="all" href="CSS/mystyle.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
        <style>
            .banner-background{
               clip-path: polygon(50% 0%, 100% 0, 100% 35%, 100% 83%, 89% 94%, 58% 100%, 25% 96%, 0 100%, 0% 35%, 0 0);
            }
        </style>
    </head>
    <body style="background: url(image/Lback.jpg); background-size: cover; background-attachment: fixed;">
        
                        <!--NavBar-->
               <%@include file="normal_Navbar.jsp"%>

        <main class="d-flex align-items-center  primary-background banner-background" style="height:70vh;">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 offset-md-4">
                        <div class="card">
                            <div class="card-header primary-background text-white text-center">
                                <span class="fa fa-user-circle-o"></span>
                                <br>
                                <p>Login here</p>
                            </div>
                            
                            <% 
                                 Message m=(Message) session.getAttribute("msg");
                                 if(m!=null){
                            %>
                            
                            <div class="alert <%= m.getCssClass()%>" role="alert">
                                <%= m.getContent()%>
                            </div>
                            
                            <% 
                               session.removeAttribute("msg");
                                }
                            %>

                            
                            <div class="card-body">
                                <form action="LoginServlet" method="post">
                                    <div class="form-group">
                                      <label for="exampleInputEmail1">Email address</label>
                                      <input name="email" required type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                      <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                    </div>
                                    <div class="form-group">
                                      <label for="exampleInputPassword1">Password</label>
                                      <input name="password" required type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                    </div>
<!--                                    <div class="form-check">
                                      <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                      <label class="form-check-label" for="exampleCheck1">Check me out</label>
                                    </div>-->
                                    
                                    <div class="container text-center">
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                    </div>
                                    
                                  </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        
        
        
                      <!--  JAVASCRIPT-->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
   <script src="JS/myjavascript.js" type="text/javascript"></script>    
    </body>
</html>
