<%-- 
    Document   : Signup
    Created on : 31 Jan, 2018, 9:18:41 AM
    Author     : basilscolu
--%>

<%@page import="java.util.Random"%>
<%@include file="Guestheader.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
   // String s=""; 
    if(request.getParameter("sub")!=null)
   {
        Random rand1 = new Random();
       int n1 = rand1.nextInt(90000) + 10000;
        session.setAttribute("useridentity",n1);
     Boolean bb= obj.insert("insert into tbl_login (id,Username,email_id,password) VALUES('"+n1+"','"+request.getParameter("uname")+"','"+request.getParameter("txt_email")+"','"+request.getParameter("password")+"')");
  // s="insert into tbl_login (id,Username,email_id,password) VALUES('"+n1+"','"+request.getParameter("uname")+"','"+request.getParameter("txt_email")+"','"+request.getParameter("password")+"')";
  if(bb)
  {
      response.sendRedirect("Registration.jsp");
  }
   }
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        <div class="main">
  <div class="header">
    <div class="header_resize">
     
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
    
    <body>
        <form>
             <table class="table table-bordered">
           
            <th colspan="2"><h2 style="font-family: serif"><center>SignUp!</center></h2></th>
                
            
            <tr><td colspan="2" ><span id="alertSpan" style="color: red"> </span></td></tr>
            <tr><td>User Name:</td><td><input type="text" required="" name="uname" id="uname"></td></tr><br>
             <tr><td>Email Id:</td><td><input type="email"  name="txt_email" required="" ></td></tr> 
                <tr><td>Password:</td><td><input type="Password"  name="password" required="" id="password"</td></tr>
                <tr><td>Re enter Password:</td><td><input type="Password"  name="password" required="" id="password"</td></tr>
                <tr><td><input type="submit" name="sub" value="Continue" ></td>
                    <td><input type="reset" name="cancel" value="CANCEL"></td></tr><br>    
                <tr><td colspan="2">Company Registration<a href="CompanyRegistration.jsp">Click Here!</a></td></tr>
        </table>
            <%
     //out.print(s);
            %>
        </form>
    </body>
</html>
<%@include file="GuestFooter.jsp" %>