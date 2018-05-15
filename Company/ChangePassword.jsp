<%-- 
    Document   : ChangePassword
    Created on : Nov 4, 2017, 4:24:09 AM
    Author     : student9
--%>

<%@include file="companyheader.jsp" %>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Change Password</title>
    </head>
    <body>
        
         <%
           String submit = request.getParameter("save");
            String newpwd=request.getParameter("txtnewpassword");
            if (submit != null) {
                String up="update tbl_company set company_password='"+newpwd+"'  where company_id='"+session.getAttribute("cid")+"'";
                boolean b=obj.insert(up);
                                                
                          }
                                          
        
        %>
        
     <h2 style="font-family: cursive"><center>Change Password</center></h2>
         <form name="f1">
                                  <table class="table table-hover">
       <tr><td>Current Password</td><td><input type="text"  id="txtcurrentpassword" name="txtcurrentpassword"></td></tr>
         <tr><td>New Password</td><td><input type="text"  id="txtnewpassword" name="txtnewpassword"></td></tr>
           <tr><td>Re-Type Password</td><td><input type="text"  id="txtconfirmpassword" name="txtconfirmpassword"></td></tr>
                  <tr><td></td><td><input type="submit" class="btn btn-primary" name="save" value="Submit">
                    <input type="reset" class="btn btn-danger" name="Cancel" value="Cancel"></td></tr>
                     
                                  </table> 
              
          </form>
    </body>
</html>
<%@include file="companyfooter.jsp" %>
