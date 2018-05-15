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
           <tr><td colspan="3"><h2><center>Selected Students</center></h2></td></tr>
           <tr><th>Job Name</th><th>Exam Name</th><th></th></tr>
            <%
                
                       String dis= "select * from tbl_jobdetails jd,tbl_exam e where jd.job_id=e.job_id and jd.company_id='"+session.getAttribute("company_id")+"'";
                       ResultSet rs1=obj.Select(dis);
                     while(rs1.next())
                       {
                           
                          
            %>
                      
                      
                       <tr><td><%=rs1.getString("job_name")%></td>
                      <td><%=rs1.getString("exam_name")%></td>
                      
                              <%}%>
                     
                         
                   
                       
                 
                  </table>
    </body>
</html>
<%@include file="companyfooter.jsp" %>
    