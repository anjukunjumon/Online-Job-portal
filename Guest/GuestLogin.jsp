<%-- 
    Document   : officerlogin
    Created on : Sep 25, 2017, 2:31:29 PM
    Author     : student10
--%>
<%@include file="Guestheader.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html><head>
    </head>
        <body>
      
            <div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
            <li ><a href="GuestHome.jsp"><span>Home Page</span></a></li>
          <li class="active"><a href="GuestLogin.jsp"><span>Login</span></a></li>
          <li><a href="../Company/company.jsp"><span>Company Registeration</span></a></li>
          <li><a href="../Admin/aboutus.jsp"><span>About Us</span></a></li>
         
          <li><a href="../Admin/contact.jsp"><span>Contact Us</span></a></li>
          
        </ul>
      </div>
      <div class="logo">
        <h1><a href="index.html">Plat<span>Ziert</span></a></h1>
      </div>
      <div class="clr"></div>
    </div>
  </div>
<div class="container-fluid">
    <div class="col-sm-12" style="min-height: 400px">
    <div class="col-sm-3"></div>
    <div class="col-sm-6">
   
        <form >
        <table class="table table-bordered">
           
            <th colspan="2"><h2 style="font-family: serif"><center>Login</center></h2></th>
                
            
            <tr><td colspan="2" ><span id="alertSpan" style="color: red"> </span></td></tr>
            <tr><td>User Name:</td><td><input type="text" required="" name="uname" id="uname"></td></tr><br>
                <tr><td>Password:</td><td><input type="Password"  name="password" required="" id="password"</td></tr>
                 <tr><td><input type="submit" name="sub" value="LOGIN" ></td>
                    <td><input type="reset" name="cancel" value="CANCEL"></td></tr><br>                                
        </table>
            <label style="font-size: 18px">Not a Member? <a href="Signup.jsp">sign up!</a></label>
        </form>
          <%
             
               
            
              String submit=request.getParameter("sub");
               if(submit!=null)
              
               {
                    
                   
                       
                        
                         ResultSet rs=obj.Select("select * from tbl_login lg where lg.Username='"+request.getParameter("uname")+"' and lg.password='"+request.getParameter("password")+"'");
                    if(rs.next())
                    {   
                     session.setAttribute("useridentity",rs.getString("id")
);
                     response.sendRedirect("Registration.jsp");
                    }
                  
                    else
                    {%>
                    <script>
                        
                        document.getElementById('alertSpan').innerHTML="Invalid Username or Password!!! ";
                        
                    </script>
                    <%}
                
               }
             
             
               %>
    </body>
</html>
<%@include file="GuestFooter.jsp" %>