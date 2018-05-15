
  
<%@include file="AdminHeader.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form>
            
            
       <table class="table table-bordered">
          <tr><th colspan="3"><h1>Selected Candidates</h1></th></tr>
           <tr><th>Student Name</th><th>Company Name</th><th>Job Name</th></tr>
            <%
                
                       String dis= "select * from tbl_exam e,tbl_examresult er,tbl_jobdetails jd,tbl_company c,tbl_student s where er.exam_id=e.exam_id and e.job_id=jd.job_id and jd.company_id=c.company_id and er.student_id=s.stud_id and er.examResult_status='4'";
                       ResultSet rs1=obj.Select(dis);
                     while(rs1.next())
                       {
                           
                           
                           
                           
                          
                           {%>
                      
                      
                       <tr><td><%=rs1.getString("stud_name")%></td>
                           <td><%=rs1.getString("company_name")%></td>
                        <td><%=rs1.getString("job_name")%></td></tr>
                      
                       <%}%>
                              
                              
                     
                         
                   
                       
                  <% }  %>  
                
                  </table>
    </form>
    </body>
</html>
<%@include file="AdminFooter.jsp" %>

