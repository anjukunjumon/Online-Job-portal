<%-- 
    Document   : ViewCompletedExams
    Created on : Nov 4, 2017, 2:31:57 PM
    Author     : student8
--%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@include file="companyheader.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script>
            function genResult(examId){
                alert('hii')
        $.ajax({url: "AjaxGenResult.jsp?examId="+examId, success: function(result){
                var res=result.trim();
                alert(res);
                
                if(res=="true"){
     $("#"+examId).html("Result Genarated");
 }
 alert('Exam Not Completed Yet...')
    }});
            }
       </script>
       
        
        
        
        
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        </head>
    <body>
        
        
        <%
            
            
            
             SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                        Date dt = new Date();
                        String dta = sdf.format(dt);
        
        if(request.getParameter("btnSub")!=null)
        {
            
        }
        
        %>
        
        
        <form>
            
            
       <table class="table table-bordered">
           <tr><td colspan="3"><h2><center>Completed Exams</center></h2></td></tr>
           <tr><th>Job Name</th><th>Exam Name</th><th></th></tr>
            <%
                
                       String dis= "select * from tbl_company c,tbl_exam e,tbl_jobdetails j where  j.job_id=e.job_id and c.company_id=j.company_id and exam_date<CURDATE() and c.company_id='"+session.getAttribute("cid")+"'";
                       ResultSet rs1=obj.Select(dis);
                     while(rs1.next())
                       {
                           String st="0";
//                           String sel="select * from tbl_exam where exam_id='"+rs1.getString("exam_id")+"' and exam_date>=Curdate()";
//                           ResultSet rs=obj.Select(sel);
//                           if(rs.next())
//                           {
//                               st="1";
//                           }
                           
                           
                           
                           
                          
            %>
                      
                      
                       <tr><td><%=rs1.getString("job_name")%></td>
                      <td><%=rs1.getString("exam_name")%></td>
                      <td colspan="2"><div id="<%=rs1.getString("exam_id")%>"><%if(rs1.getString("exam_status").equals("0")){    %><input class="btn btn-primary" type="submit" name="sub" onclick="genResult(<%=rs1.getString("exam_id")%>)"  value="View Result"><% }  else if(rs1.getString("exam_status").equals("2")){%><a href="ExamDateShedule.jsp?exam_id=<%=rs1.getString("exam_id")%>">Shedule Exam</a><%}           else if(rs1.getString("exam_status").equals("1")){%>Result Genarated<a href="ShortList1.jsp?exam_id=<%=rs1.getString("exam_id")%>">Short List</a>
                              <%}else if(rs1.getString("exam_status").equals("3")){%>
                              <a href="ShortList2.jsp?exam_id=<%=rs1.getString("exam_id")%>">Short List2</a>
                              <%}%>
                              
                              </div></td></tr>
                     
                         
                   
                       
                  <% }  %>  
                
                  </table>
    </form>
    </body>
</html>
<%@include file="companyfooter.jsp" %>
    </body>
</html>
