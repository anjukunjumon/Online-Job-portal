<%-- 
    Document   : preference
    Created on : 3 Feb, 2018, 4:35:57 PM
    Author     : basilscolu
--%>
<%@include file="Jobseekerheader.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav"> 
        <ul>
            <li ><a href="Homepage.jsp"><span>job Vacancy</span></a></li>
            <li ><a href="MyApplication.jsp"><span>Applied Application</span></a></li>
          <li class="active"><a href="Editpreference.jsp"><span>Edit Preference</span></a></li>
          <li><a href="MyResume"><span>My Resume</span></a></li>
            <li><a href="../Admin/contact.jsp"><span>Online Exam</span></a></li>
           
        </ul>
      </div>
      <div class="logo">
        <h1><a href="index.html">Plat<span>Ziert</span></a></h1>
      </div>
      <div class="clr"></div>
    </div>
  </div>
<div class="container-fluid">
    <div class="col-sm-12" style="min-height: 400px">
    <div class="col-sm-3"></div>
    <div class="col-sm-6">
           <form >
        <table class="table table-bordered">
           
            <th colspan="2"><h2 style="font-family: serif"><center>Preference</center></h2></th>
                
            
            <tr><td colspan="2" ><span id="alertSpan" style="color: red"> </span></td></tr>
          
            <tr><td colspan="2"  ><label>In Which Field Are you looking For a Job ?</label><br>
                    <select onchange="SaveJobField(this.value)" style="width: 350px;"><option value="0">--select--</option>
                        <%
                            ResultSet rs=obj.Select("select * from tbl_jobfield");
                            while(rs.next())
                            {
                            %>
                            <option value="<%=rs.getString("id")%>"><%=rs.getString("field")%></option>
                            <%
                            }
                            %>
                    </select> 
                    <div style="width: 350px;" id="jobfieldid">
                        <%
                        ResultSet rsMs=obj.Select("select * from tbl_canjobfield cj, tbl_jobfield jf where cj.JobField_id=jf.id and cj.userid='"+userid+"'");
                   
                    while(rsMs.next())
                    {
                    %>
                    <label><%=rsMs.getString("field")%></label><label style="margin-left: 20px;color: blue;cursor: pointer" onclick="removeJobField(<%=rsMs.getString("id")%>)" >
                      Remove
                    </label><br>
                    <%
                    }
     
  
                
                 %>
                    </div>
                
                </td></tr>
            <tr>
                <td colspan="2"> <label>In which cities would you like to do Your job ?</label><br>
                      <select onchange="SaveLocation(this.value)" style="width: 350px;"><option value="0">--select--</option>
                        <%
                            ResultSet rs1=obj.Select("select * from tbl_location");
                            while(rs1.next())
                            {
                            %>
                            <option value="<%=rs1.getString("id")%>"><%=rs1.getString("location")%></option>
                            <%
                            }
                            %>
                      </select> <br>
                      <div style="width: 350px;" id="LocationId">
                         <% 
                             ResultSet rsMs1=obj.Select("select * from tbl_canPrefJobLocation c, tbl_location l where c.locationid=l.id and c.userid='"+userid+"'");
                   
                    while(rsMs1.next())
                    {
                    %>
                    <label><%=rsMs1.getString("location")%></label> <label style="margin-left: 20px;color: blue;cursor: pointer" onclick="removeLocation(<%=rsMs1.getString("id")%>)" >
                      Remove
                    </label><br>
                    <%
                    }
       
       
  
                
                 %>
                          
                      </div>
                </td>
            </tr>
            <tr><td colspan="2"><input type="submit" name="sub" value="SAVE" ></td>
                    </tr><br>                                
        </table>
        </form>
    </body>
    <%
                    if(request.getParameter("sub")!=null)
                    {
                        response.sendRedirect("Homepage.jsp");
                    }
   
                    
                    %>
    <script>
        function SaveJobField(d)
    {
      
      alert(d);
       // alert(cpass);
         $.ajax({url:"ajaxjobfield.jsp?field="+d, 
         success: function(result){
         alert(result);
      $("#jobfieldid").html(result);
    }});
     
    }
    
    function removeJobField(d)
    {
      
      alert(d);
       $.ajax({url:"ajaxjobfield.jsp?removeid="+d, 
         success: function(result){
         alert(result);
      $("#jobfieldid").html(result);
    }});
      
      
  }
  
  
   function SaveLocation(d)
    {
      
      alert(d);
       $.ajax({url:"ajaxsaveLocation.jsp?locationId="+d, 
         success: function(result){
         alert(result);
      $("#LocationId").html(result);
    }});
      
      
  }
    
     function removeLocation(d)
    {
      
      alert(d);
       $.ajax({url:"ajaxsaveLocation.jsp?RemovelocationId="+d, 
         success: function(result){
         alert(result);
      $("#LocationId").html(result);
    }});
      
      
  }
    
    
    </script>
</html>
<%@include file="Jobseekerfooter.jsp" %>
