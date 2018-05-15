<%-- 
    Document   : Instructions
    Created on : Nov 23, 2017, 10:31:32 PM
    Author     : hp
--%>
<%@include file="companyheader.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>InstructionsPage</title>
    </head>
    <body>
       
       
    <center>
        <form>
            
       
            <%
             String submit=request.getParameter("sub");
               if(submit!=null)
               {
                   
                   String job=request.getParameter("jobname");
                   String des=request.getParameter("instructions");
             
                                      
                  
                   
                   String ins="insert into tbl_instructions(company_id,job_id,instructions)values('"+session.getAttribute("cid")+"','"+job+"','"+des+"')";
                   Boolean b=obj.insert(ins);
                   out.println(ins);
                 }
               }
               
               %>
               <table class="table table-bordered">
                         <th colspan="2"><h2 style="font-family: sans-serif;text-align: center">Instructions Details</h2></th><br><br>
                        <tr><td>job Name:</td><td><select name="jobname" id="seljob">
                                    
                                    <option value="select" required="">select</option>
                                    <%
                                        String sel="select * from tbl_jobdetails";
                                        ResultSet rs1=obj.Select(sel);
                                        while(rs1.next())
                                        {%>
                                        <option value="<%=rs1.getString("job_id")%>" <% if(jobid.equals(rs1.getString("job_id"))){%> selected=" " <%} %>><%=rs1.getString("job_name")%></option>
                                        <% }

%>
                                </select>
                        <tr><td>Instructions:</td><td><textarea input type="text" name="instructions" required="" id="course_name"></textarea></td></tr><br>
                        <tr><td><input class="btn btn-block" type="submit" name="sub" value="SAVE"></td>
        <td> <input  class="btn btn-block" type="reset" name="cancel" value="CANCEL"></td></tr>
               </table> 
                               
       </body>     
      </html>         
<%@include file="companyheader.jsp" %>
    </body>
</html>
