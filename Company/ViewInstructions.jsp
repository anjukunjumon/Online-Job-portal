<%-- 
    Document   : SelectedStudents
    Created on : Nov 6, 2017, 3:18:18 PM
    Author     : student8
--%>
<%@include file="companyheader.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        </head>
    <body>
       <table class="table table-bordered">
           <tr><td colspan="3"><h2><center>Instructions</center></h2></td></tr>
           <tr>
            <%
                
                       String dis= "select * from tbl_instructions where company_id='"+session.getAttribute("company_id")+"'";
                       ResultSet rs1=obj.Select(dis);
                     while(rs1.next())
                       {
                           
                          
            %>
           </tr>
                      
                                              <tr><td>Instructions For You..</td><td><%=rs1.getString("instructions")%></td></tr>

                      
                      
                              <%}%>
                     
                         
                       
                       
                 
                  </table>
    </body>
</html>
<%@include file="companyfooter.jsp" %>
    