<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="db.dbconnection" id="obj"></jsp:useBean>  
    
<%
               String Check=request.getParameter("degree");
               
                 
                ResultSet rsMs=obj.Select("select * from tbl_education ed,tbl_degree dd where ed.DegreeType='"+Check+"' and ed.eid=dd.eid");
                   
                    while(rsMs.next())
                    {
                    %>
                    <option value="<%=rsMs.getString("did")%>"><%=rsMs.getString("degre")%></option>
                    <%
                    }
                    
                
                 %>