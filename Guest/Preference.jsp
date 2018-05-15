<%-- 
    Document   : Preference
    Created on : 30 Jan, 2018, 7:55:02 PM
    Author     : basilscolu
--%>
<%@include file="Guestheader.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        
    <body>
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
                 
        <table class="table table-bordered">
           
            <th colspan="2"><h2 style="font-family: serif"><center>Preference</center></h2></th>
         <tr><td>Field :</td><td><input type="email"  name="txt_email" required="" ></td></tr>
                 <tr><td>type Of internship :</td><td><input type="email"  name="txt_email" required="" ></td></tr>
                  
                   <tr><td>Location :</td><td><input type="email"  name="txt_email" required="" ></td></tr>
                    
                 <tr><td><input type="submit" name="sub" value="SAVE" ></td>
                     <td><input type="reset" name="cancel" value="CANCEL"></td></tr><br>   
                                 
         </table>
    </body>
</html>
<%@include file="GuestFooter.jsp" %>