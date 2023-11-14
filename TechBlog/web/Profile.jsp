<%-- 
    Document   : Profile
    Created on : 31-Oct-2023, 4:40:46 pm
    Author     : LENOVO
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.tech.blog.entities.Category"%>
<%@page import="com.tech.blog.dao.PostDao"%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="com.tech.blog.entities.UserRegister"%>
<%@page errorPage="Error_Page.jsp"%>

<% 
 UserRegister user=(UserRegister) session.getAttribute("currentUser");
 if(user==null)
 {
 response.sendRedirect("Login_Page.jsp");
 }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
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
        
<!--         NavBar-->

                   <nav class="navbar navbar-expand-lg  sticky-top navbar-light primary-background" >
                 
                 <a class="navbar-brand" href="index.jsp"> <span class="fa fa-snowflake-o"></span> Tech Blog</a>
               <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                 <span class="navbar-toggler-icon"></span>
               </button>

                 <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul class="navbar-nav mr-auto">
                   <li class="nav-item active">
                       <a class="nav-link" href="#"> <span class="fa fa-book"></span> LearnCode with Ayush <span class="sr-only">(current)</span></a>
                   </li>
     
                   <li class="nav-item dropdown">
                     <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                         <span class="fa fa-check-square-o"></span> Categories
                     </a>
                     <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                       <a class="dropdown-item" href="#">Programming Language</a>
                       <a class="dropdown-item" href="#">Project Implementation</a>
                       <div class="dropdown-divider"></div>
                       <a class="dropdown-item" href="#">Data Structure</a>
                     </div>
                   </li>
                   <li class="nav-item">
                       <a class="nav-link" href="#"> <span class="fa fa-id-badge"></span> Contact</a>
                   </li>
                   
                   <li class="nav-item">
                       <a class="nav-link" href="#"  data-toggle="modal" data-target="#add-post-modal"> <span class="fa fa-edit"></span> Do Post</a>
                   </li>
                   
                   
<!--                   <li class="nav-item">
                     <a class="nav-link " href="#">More</a>
                   </li>-->
                  </ul>
                  
                     <ul class="navbar-nav mr-right">
                          <li class="nav-item">
                             <a class="nav-link" href="#!" data-toggle="modal" data-target="#profile-modal" > <span class="fa fa-user-circle"></span> <%= user.getName() %></a>
                         </li>
                         <li class="nav-item">
                             <a class="nav-link" href="LogoutServlet"> <span class="fa fa-user-plus"></span>Logout</a>
                         </li>
                         
                     </ul>
                </div>
              </nav>

               

<!--           EndOfNavBar-->


          <!-- main body of the page-->

          <main>
              <div class="container">
                  <div class="row mt-4">
                      <!-- first row-->
                      <div class="col-md-4">
                          <!--Categories-->
                          <div class="list-group">
                                <a href="#" class="list-group-item list-group-item-action active">
                                  All Posts
                                </a>
                              
                              <!--Categories-->
                              <% 
                              PostDao d=new PostDao(ConnectionProvider.getConnection());
                              ArrayList<Category>list1=d.getAllCategories();
                              for(Category cc:list1)
                              {
                              %> 
                              <a href="#" class="list-group-item list-group-item-action"><%= cc.getName()%></a>
                              <%
                                    }
                              %>
                                
                                
                              </div>
                      </div>
                      <!-- second row-->
                      <div class="col-md-8" id="post-container">
                          <!--Posts-->
                          <div class="container text-center" id="loader">
                              <i class="fa fa-refresh fa-4x fa-spin"></i>
                              <h3 class="mt-2">Loading...</h3>
                              
                          </div>
                          <div class="container-fluid" id="post-container">
                              
                          </div>
                      </div>
                      
                  </div>
              </div>
          </main>



<!--                Profile Modal-->

           <!-- Button trigger modal -->
                    

                    <!-- Modal -->
                    <div class="modal fade" id="profile-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                      <div class="modal-dialog">
                        <div class="modal-content">
                          <div class="modal-header  primary-background text-white text-center">
                            <h5 class="modal-title" id="exampleModalLabel">TechBlog</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                            </button>
                          </div>
                          <div class="modal-body">
                              <div class="container text-center">
                                  <img src="Pics/<%= user.getProfile()%>" class="img-fluid" style="border-radius: 50%; max-width: 150px;">
                                  <br>
                                  <h5 class="modal-title mt-3" id="exampleModalLabel"><%= user.getName()%></h5>
                                  
                                <!--  //details-->
                                    
                                <div id="profile-details">
                                  <table class="table">
                                    
                                    <tbody>
                                      <tr>
                                        <th scope="row">ID:</th>
                                        <td><%= user.getId() %></td>
                                        
                                      </tr>
                                      <tr>
                                        <th scope="row">Email</th>
                                        <td><%= user.getEmail() %></td>
                                        
                                      </tr>
                                      <tr>
                                        <th scope="row">Gender:</th>
                                        <td><%= user.getGender()%></td>      
                                      </tr>
                                      
                                      <tr>
                                        <th scope="row">Status:</th>
                                        <td><%= user.getAbout() %></td>      
                                      </tr>
                                      
                                      <tr>
                                        <th scope="row">Registered on:</th>
                                        <td><%= user.getDateTime().toString() %></td>      
                                      </tr>
                                    </tbody>
                                  </table>
                                 </div>
                                      
                                    <!-- Profile edit-->
                                    <div id="profile-edit" style="display: none;" >
                                        <h3 class="mt-2">Please Edit Carefully</h3>
                                        
                                        <form action="EditServlet" method="post"  enctype="multipart/form-data";>
                                            <table class="table">
                                                <tr>
                                                    <td>ID :</td>
                                                    <td><%= user.getId() %></td>
                                                    
                                                </tr>
                                                <tr>
                                                    <td>Email :</td>
                                                    <td><input type="email" class="form-control" name="user_email" value="<%= user.getEmail() %>"></td>
                                                    
                                                    
                                                </tr>
                                                <tr>
                                                    <td>Name :</td>
                                                    <td><input type="text" class="form-control" name="user_name" value="<%= user.getName() %>"></td>
                                                    
                                                </tr>
                                                <tr>
                                                    <td>Password :</td>
                                                    <td><input type="text" class="form-control" name="user_password" value="<%= user.getPassword() %>"></td>
                                                    
                                                </tr>
                                                  <tr>
                                                    <td>Gender :</td>
                                                    <td><%= user.getGender().toUpperCase()%></td>      
                                                  </tr>
                                                  
                                                  <tr>
                                                    <td>About :</td>
                                                    <td>
                                                        <textarea rows="3" class="form-control" name="user_about">
                                                            <%= user.getAbout()%> 
                                                        </textarea>
                                                    </td>
                                                    
                                                </tr>
                                                
                                                <tr>
                                                    <td>New Profile Pic :</td>
                                                    <td>
                                                        <input type="File" name="image" class="form-control">
                                                    </td>
                                                    
                                                </tr>
                                            </table>
                                                        
                                                        <div class="container">
                                                            <button type="submit" class="btn btn-outline-primary">Save</button>
                                                        </div>    
                                        </form>
                                        
                                    </div>
                              </div>
                          </div>
                          <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button id="edit-profile-button" type="button" class="btn btn-primary">EDIT</button>
                          </div>
                        </div>
                      </div>
                    </div>

        
        

          <!--      End of Profile Modal-->
   
   
               
   
          <!--   Add post model-->
                           

                         <!-- Modal -->
                         <div class="modal fade" id="add-post-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                           <div class="modal-dialog">
                             <div class="modal-content">
                               <div class="modal-header">
                                 <h5 class="modal-title" id="exampleModalLabel">Provide the Post Details..</h5>
                                 <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                   <span aria-hidden="true">&times;</span>
                                 </button>
                               </div>
                               <div class="modal-body">
                                 
                                   <form id="add-post-form" action="AddPostServlet" method="post">
                                       
                                       <div class="form-group">
                                           <select class="form-control" name="cid">
                                               <option selected disabled>---Select Category---</option>
                                               <% 
                                                   PostDao postd=new PostDao(ConnectionProvider.getConnection());
                                                   ArrayList<Category> list=postd.getAllCategories();
                                                   for(Category c:list)
                                                   {
                                                  %>
                                               <option value="<%=c.getCid()%>"><%=c.getName()%></option>
                                               
                                               <%
                                                   }
                                                %>
                                           </select>
                                       </div>
                                       
                                       <div class="form-group">
                                           <input  name="pTitle" type="text" placeholder="Enter post Title" class="form-control"/>
                                       </div>
                                       
                                       <div class="form-group">
                                           <textarea name="pContent" class="form-control" style="height:200px" placeholder="Enter your Content" ></textarea>
                                       </div>
                                       <div class="form-group">
                                           <textarea name="pCode" class="form-control" style="height:200px" placeholder="Enter your Program (if Any)" ></textarea>
                                       </div>
                                       <div class="form-group">
                                           <label>Select your pic..</label
                                           <br>
                                           <input type="file" name="pic">
                                       </div>
                                           
                                           <div class="container text-center">
                                               <button type="submit" class="btn-outline-primary">POST</button>
                                           </div>
                                   </form>
                                   
                               </div>
                               
                             </div>
                           </div>
                         </div>
   
            <!--   End post model-->   

                         <!--  JAVASCRIPT-->
                <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
               <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
               <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
               <script src="JS/myjavascript.js" type="text/javascript"></script> 
               
               <script>
                   
                   $(document).ready(function(){
                       let editStatus=false;
                       $('#edit-profile-button').click(function(){
                           
                           if(editStatus==false)
                           {
                               $("#profile-details").hide();
                           
                               $("#profile-edit").show();
                               editStatus=true;
                               $(this).text("Back");
                           }else{
                               $("#profile-details").show();
                           
                               $("#profile-edit").hide();
                               editStatus=false;
                               $(this).text("Edit");
                           }
                       
                       });
                       
                   });
                   
               </script>
                
                      <!--  now add post js-->
                      <script>
                          $(document).ready(function(e){
                              
                              $("#add-post-form").on("submit",function(event){
                                  //this code gets called when foorm is submitted...
                                  event.preventDefault();
                                  //now requesting to server
                                  console.log("You have clickked on submit");
                                  let form=new FormData(this);
                                  $.ajax({
                                      url:"AddPostServlet",
                                      type:'POST',
                                      data:form,
                                      success:function(data,textStatus,jqXHR){
                                        //success...  
                                        console.log(data);
                                        if(data.trim()=='done')
                                        {
                                            swal("Good job!", "You Saved Successfully!", "success");
                                        }
                                        else
                                        {
                                            swal("Error!", "Something went Wrong!", "Retry");
                                        }
                                      },
                                      error:function(jqXHR,textStatus,errorThrown){
                                        //error..  
                                        swal("Error!", "Something went Wrong!", "Retry");
                                      },
                                      processData:false,
                                      contentType:false
                                  });
                              });
                          });
                      </script>
                      
                     <!--  loading post using ajax-->
                      <script>
                          $(document).ready(function(e){
                              $.ajax({
                                  url:"Load_Post.jsp",
                                  success:function(data,textStatus,jqXHR){
                                      console.log(data);
                                      $("#loader").hide();
                                      $('#post-container').html(data);
                                  }
                              })
                          })
                      </script>
    </body>
</html>
 