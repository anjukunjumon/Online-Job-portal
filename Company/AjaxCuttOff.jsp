
<%@page import="java.sql.ResultSet"%>
<jsp:useBean id="obj" class="db.dbconnection"></jsp:useBean>


        <%String examId=request.getParameter("examId");
        String up2="update tbl_exam set exam_status=2 where exam_id='"+examId+"'";
        obj.insert(up2);
        
        
       int cuttOff=Integer.parseInt(request.getParameter("cuttOff"));
       String up="update tbl_examresult set examResult_status=1  where exam_id ='"+examId+"' and examResult_score>'"+cuttOff+"' ";
      boolean b=obj.insert(up);
       out.print(b);
        String up1="update tbl_examresult set examResult_status=2  where exam_id ='"+examId+"' and examResult_score<='"+cuttOff+"' ";
      boolean b1=obj.insert(up1);
       %>

