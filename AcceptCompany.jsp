<%-- 
    Document   : AcceptCompany
    Created on : Nov 11, 2017, 2:01:52 PM
    Author     : student8
--%>
<%@include file="AdminHeader.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
                String company_name="",company_address="",company_contact="",company_revenue="",company_id="";
                String editid="";
                if(request.getParameter("eid")!=null)
                {
                    String sel="update tbl_company set company_status=1 where company_id='"+request.getParameter("eid")+"'";
                   obj.insert(sel);
                }
             
            if(request.getParameter("did")!=null)
           {
            String del="delete from tbl_company where company_id='"+request.getParameter("did")+"'";
            boolean b=obj.insert(del);
            out.print(b);
            if(b)
            {
                response.sendRedirect("AcceptCompany.jsp");
            }
            }
                %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <table class="table table-bordered">
                   <tr><td colspan="15"><h2 style="font-family: serif"><center>Company Details</center></h2></td></tr>
                    <tr><td><center>Name</center></td>
                        <td><center>Address</center></td>
                        <td><center>Contact</center></td>
                 
                        <td><center>Revenue</center></td>
                        
         <%
                       String dis= "select * from tbl_company where company_status=0";
                       ResultSet rs=obj.Select(dis);
                       while(rs.next())
                       {%>
               
               <tr><td><%=rs.getString("company_name")%></td>
               <td><%=rs.getString("company_address")%></td>
                   <td><%=rs.getString("company_contact")%></td>
                 
                   <td><%=rs.getString("company_revenue")%></td>
                  
                 <td> </td> <td><a href="AcceptCompany.jsp?eid=<%=rs.getString("company_id")%>">Accept</a>
                       <a href="AcceptCompany.jsp?did=<%=rs.getString("company_id")%>">Reject</a></td></tr>          
                         
                     <%  }
                       
                    %> 
            </table>
    </body>
</html>
<%@include file="AdminFooter.jsp" %>