<%-- 
    Document   : ShortList1
    Created on : Nov 6, 2017, 10:42:53 AM
    Author     : student8
--%>
<%@include file="companyheader.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
      
    </head>
    <body>
        
        
          <form>
              <table>
        <%
            if(request.getParameter("btnSub")!=null)
            {
                String stu[]=request.getParameterValues("chk");
                for(int i=0;i<stu.length;i++)
                        {
                            String up="update tbl_examresult set examResult_status=4 where exam_id='"+request.getParameter("hid")+"'  and student_id='"+stu[i]+"'";
                     obj.insert(up);   }
            }
            
            
            
            
            String exam_id=request.getParameter("exam_id");
            String sel="select * from tbl_examresult e,tbl_student s where e.student_id=s.stud_id and e.exam_id='"+exam_id+"' and examResult_status=1";
            ResultSet rs=obj.Select(sel);
            while(rs.next())
            {%>
            <tr><td> <input type="checkbox" name="chk" value="<%=rs.getString("student_id")%>"><%=rs.getString("stud_name")%>
                </td>
            </tr>
                <%}
            
            
            
            
            
            
            
            
      
        
        %>
      
            
             <tr><td><input type="submit" name="btnSub" value="proceed"></td></tr>
             <input type="hidden" name="hid" value="<%=exam_id%>">
              </table>
        </form>
    </body>
</html>
<%@include file="companyfooter.jsp" %>