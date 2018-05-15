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
        
         <script>
            function gen(cuttOff,examId){
        $.ajax({url: "AjaxDateShedule.jsp?examId="+examId+"&cuttOff="+cuttOff, success: function(result){
                var res=result.trim();
                alert(res)
                setTimeout(function() {
                window.location.href = 'ViewCompletedExams.jsp'
            }, 100);

              
    }});
            }
       </script>
        
        
        
        
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><form>
        <%
        String exam_id=request.getParameter("exam_id");
        
        %>
        <form>
            
            <table>
                <tr><td>InterView Date</td><td><input type="date" name="txtCutoff"></td><td><input type="button" name="btnGen" value="Generate" onclick="gen(txtCutoff.value,<%=exam_id%>)"> </td></tr>
            </table>
            
        </form>
    </body>
</html>
<%@include file="companyfooter.jsp" %>