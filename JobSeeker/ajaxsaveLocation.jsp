<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="db.dbconnection" id="obj"></jsp:useBean>  
    
<%
     String userid=session.getAttribute("useridentity").toString();  
     
             if(request.getParameter("locationId")!=null)  
             {
    obj.insert("INSERT into tbl_canPrefJobLocation (userid,locationid) VALUES('"+userid+"','"+request.getParameter("locationId")+"')");
             }
             
              if(request.getParameter("RemovelocationId")!=null)  
             {
                 obj.insert("delete from tbl_canPrefJobLocation   where id='"+request.getParameter("RemovelocationId")+"'");
             }
             
         ResultSet rsMs=obj.Select("select * from tbl_canPrefJobLocation c, tbl_location l where c.locationid=l.id and c.userid='"+userid+"'");
                   
                    while(rsMs.next())
                    {
                    %>
                    <label><%=rsMs.getString("location")%></label> <label style="margin-left: 20px;color: blue;cursor: pointer" onclick="removeLocation(<%=rsMs.getString("id")%>)" >
                      Remove
                    </label><br>
                    <%
                    }
       
       
  
                
                 %>