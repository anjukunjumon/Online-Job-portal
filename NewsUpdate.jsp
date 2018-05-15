<%-- 
    Document   : NewsUpdate
    Created on : Nov 6, 2017, 11:06:22 AM
    Author     : student8
--%>
<%@include file="AdminHeader.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>News Page</title>
    </head>
    <body>
      
    <center>
        <form class="">
            <%
                String headline="",description="",date="";
                String editid="";
                if(request.getParameter("eid")!=null)
                {
                    String sel="select * from tbl_news where news_id='"+request.getParameter("eid")+"'";
                    ResultSet rs=obj.Select(sel);
                    if(rs.next())
                    {
                        editid=request.getParameter("eid");
                        headline=rs.getString("news_headline");
                        description=rs.getString("news_description");
                       
                       
                    }
                }
             
            if(request.getParameter("did")!=null)
           {
            String del="delete from tbl_news where news_id='"+request.getParameter("did")+"'";
            boolean b=obj.insert(del);
            out.print(b);
            if(b)
            {
                response.sendRedirect("NewsUpdate.jsp");
            }
            }
                %>
                <table class="table ">
                    <tr><td colspan="2"><center><h1 style="font-family: sans-serif">News Details</h1></center></td></tr>
        <tr><td>News Headline:</td><td><input  class="text text-info" type="text" value="<%=headline%>" required="" name="headline" id="headline"></td></tr><br>
        <tr><td>News Description:</td><td><textarea input type="textarea" value="" required="" name="description" id="description"><%=description%></textarea></td></tr>
         
         <tr><td><input class="btn btn-primary" type="submit" name="sub"  value="SAVE" onclick=""></td>
                    <td><input class="btn btn-primary" type="reset" name="cancel" value="CANCEL"></td></tr><br>
                <input type="hidden" value="<%=editid%>" name="hid">
            </table>
        <%
               String submit=request.getParameter("sub");
               if(submit!=null)
               {
                   
                   String head=request.getParameter("headline");
                   String des=request.getParameter("description");
                  
                  
                   if(request.getParameter("hid")!="")
                        {
                             String up="update tbl_news set news_headline='"+head+"',news_description='"+des+"',news_date<=CURDATE() where news_id='"+request.getParameter("hid")+"'";
                             boolean b=obj.insert(up);
                             if(b)
                                     {
                                      response.sendRedirect("NewsUpdate.jsp");
                                     }
                           out.println(up);
                         }
                         else
                   {
                   String ins="insert into tbl_news(news_headline,news_description,news_date)values('"+head+"','"+des+"',curdate())";
                   Boolean b=obj.insert(ins);
                   out.println(b);
                 }
               }
               %>
                <table class="table table-bordered">
                    <tr><td colspan="4"><h2><center>News Updates</center></h2></td></tr>
                    <tr><td><center>Headlines</center></td>
                <td><center>Description</center></td>
        <td><center>Date</center></td><td></td></tr>
                   <%
                       String dis= "select * from tbl_news";
                       ResultSet rs=obj.Select(dis);
                       while(rs.next())
                       {%>
               <tr><td><%=rs.getString("news_headline")%></td>
                   <td><%=rs.getString("news_description")%></td>
                   <td><%=rs.getString("news_date")%></td>
                   
                   <td><a class="btn btn-link " href="NewsUpdate.jsp?eid=<%=rs.getString("news_id")%>">Edit</a>
                       <a class="btn btn-link " href="NewsUpdate.jsp?did=<%=rs.getString("news_id")%>">Delete</a></td></tr>          
                         
                     <%  }
                       
                    %> 
            </table>
        </form>
    </center>
    </body>
</html>

<%@include file="AdminFooter.jsp" %>
    </body>
</html>
