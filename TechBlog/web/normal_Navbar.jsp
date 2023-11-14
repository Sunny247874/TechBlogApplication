<%-- 
    Document   : normal_Navbar
    Created on : 28-Oct-2023, 12:07:02 am
    Author     : LENOVO
--%>


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
                       <a class="nav-link" href="Login_Page.jsp"> <span class="fa fa-user"></span>Login</a>
                   </li>
                   <li class="nav-item">
                       <a class="nav-link" href="Register_Page.jsp"> <span class="fa fa-user-plus"></span>Sign Up</a>
                   </li>
<!--                   <li class="nav-item">
                     <a class="nav-link " href="#">More</a>
                   </li>-->
                  </ul>
                   <form class="form-inline my-2 my-lg-0">
                   <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                   <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                 </form>
                </div>
              </nav>

               