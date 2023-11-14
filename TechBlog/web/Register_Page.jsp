<%-- 
    Document   : Register_Page
    Created on : 28-Oct-2023, 3:06:31 pm
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
                   
        
        <!-- //CSS-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link  rel="stylesheet" type="text/css" media="all" href="CSS/mystyle.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
        <style>
            .banner-background{
               clip-path: polygon(0 0, 100% 0, 100% 30%, 100% 100%, 77% 97%, 36% 100%, 0 96%, 0% 30%);
            }
        </style>
    </head>
    <body style="background: url(image/Lback.jpg); background-size: cover; background-attachment: fixed;">
       
                 <!--        //NavBar-->
                 <%@include file="normal_Navbar.jsp"%>
        
<!--                                             //style="padding-bottom:30px;-->
            <main class=" d-flex align-items-center primary-background banner-background" style="height:90vh;">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 offset-md-3">
                        <div class="card">
                            <div class="card-header primary-background text-white text-center">
                                <span class="fa fa-user-circle fa-3x"></span>
                                <br>
                                <p>Register here</p>
                            </div>
                            <div class="card-body">
                                <form   id="reg-form" action="RegisterServlet" method="POST">
                                 
                                 <div class="form-group">
                                  <label for="user_name">User Name</label>
                                  <input name="user_name" type="text" class="form-control" id="user_name" aria-describedby="emailHelp" placeholder="Enter name">
                                  
                                </div>
                                 
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Email address</label>
                                  <input name="user_email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>
                                 
                                <div class="form-group">
                                  <label for="exampleInputPassword1">Password</label>
                                  <input name="user_password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                </div>
                                 
                                 <div class="form-group">
                                  <label for="gender">Select Gender</label>
                                  <br>
                                  <input type="radio"  id="gender" name="gender" value="male">Male
                                  <input type="radio"  id="gender" name="gender" value="female">Female
                                </div>
                                    
                                    <div class="form-group">
                                        
                                        <textarea class="form-control" id="" name="about" rows="2"  placeholder="Enter Somthing about your self"></textarea>
                                    </div> 
                                 
                                <div class="form-check">
                                  <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1">
                                  <label class="form-check-label" for="exampleCheck1">Agree terms and conditions</label>
                                </div>
                                 <br>
                                 <div class="container  text-center" id="loader" style="display: none;">
                                     <span class="fa fa-refresh fa-spin fa-4x"></span>
                                     <h4>Please wait..</h4>
                                 </div>
                                <button id="sumbit-btn"  type="submit" class="btn btn-primary">Submit</button>
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
   <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>


   <script>
       $(document).ready(function(){
           console.log("loaded...")
           
           $('#reg-form').on('submit',function(event){
               event.preventDefault();
               let form=new FormData(this);
              
                $("#sumbit-btn").hide();
                $("#loader").show();
               
               //send register servlet:
               $.ajax({
                   url:"RegisterServlet",
                   type:'POST',
                   data:form,
                   success:function(data,textStatus,jqXHR){
                       console.log(data)
                       $("#sumbit-btn").show();
                        $("#loader").hide();
                        if(data.trim()=='done')
                        {
                        swal("Register Successful.. Click you go to Login Page ")
                                .then((value) => {
                                  window.location="Login_Page.jsp"
                                });
                              
                          }else{
                              swal(data);
                          }    
                   },
                   error: function(jqXHR,textStatus,errorThrown){
                        $("#sumbit-btn").show();
                        $("#loader").hide();
                       swal("Somthing went wrong ..try again ");
                   },
                   processData:false,
                   contentType:false
               });
           });
           
       });

   </script>
   
   
    </body>
</html>
