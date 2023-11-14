<%-- 
    Document   : Load_Post
    Created on : 05-Nov-2023, 4:25:15 pm
    Author     : LENOVO
--%>

<%@page import="java.util.List"%>
<%@page import="com.tech.blog.entities.Post"%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="com.tech.blog.dao.PostDao"%>

<div class="row">
<%
  
PostDao d=new PostDao(ConnectionProvider.getConnection());
List<Post> posts=d.getAllPosts();
for(Post p:posts)
{
%>

<div class="col-md-6">
    <div class="card">
        <img src="blogPic/<%= p.getpPic()%>" class="card-img-top" alt="Card image cap">
        <div class="card-body">
            <b><%= p.getpTitle() %></b>
            <p><%= p.getpContent()%> </p>
            <pre><%= p.getpCode() %></pre>
        </div>
    </div>
    
</div>



<%
}


%>
</div>

