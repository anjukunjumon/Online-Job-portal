<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="db.dbconnection" id="obj"></jsp:useBean>  
    
<%
     String userid=session.getAttribute("useridentity").toString();  
     
             if(request.getParameter("field")!=null)  
             {
    obj.insert("INSERT into tbl_canJobField (userid,JobField_id) VALUES('"+userid+"','"+request.getParameter("field")+"')");
             }
             
              if(request.getParameter("removeid")!=null)  
             {
                 obj.insert("delete from tbl_canjobfield   where id='"+request.getParameter("removeid")+"'");
             }
             
         ResultSet rsMs=obj.Select("select * from tbl_canjobfield cj, tbl_jobfield jf where cj.JobField_id=jf.id and cj.userid='"+userid+"'");
                   
                    while(rsMs.next())
                    {
                    %>
                    <label><%=rsMs.getString("field")%></label> <label style="margin-left: 20px;color: blue;cursor: pointer" onclick="removeJobField(<%=rsMs.getString("id")%>)" >
                      Remove
                    </label><br>
                    <%
                    }
       
       
  
                
                 %>