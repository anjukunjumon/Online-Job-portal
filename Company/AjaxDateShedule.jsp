
<%@page import="java.sql.ResultSet"%>
<jsp:useBean id="obj" class="db.dbconnection"></jsp:useBean>


        <%String examId=request.getParameter("examId");
        String up2="update tbl_exam set exam_status=3 where exam_id='"+examId+"'";
        obj.insert(up2);
        String cuttOff=(request.getParameter("cuttOff"));
        String sel=" select * from tbl_examresult er,tbl_exam e where e.exam_id=er.exam_id and e.exam_id ='"+examId+"' and examResult_status=1";
        ResultSet rs=obj.Select(sel);
        while(rs.next())
        {
            String up="update tbl_jobapplication set interviewDate='"+cuttOff+"' where job_id='"+rs.getString("job_id")+"' and  stud_id='"+rs.getString("student_id")+"'";
       obj.insert(up);
        
        }
        
        
        
        
        
        
       
     
       %>

