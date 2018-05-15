<%-- 
    Document   : officerlogin
    Created on : Sep 25, 2017, 2:31:29 PM
    Author     : student10
--%>
<%@include file="Jobseekerheader.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html><head>
    </head>
        <body>
        <%
       
        String JobField[]=new String[10];
        int j=1;
     ResultSet RsJobField= obj.Select("select * from tbl_canjobfield where  userid=19377");
             
              while(RsJobField.next())
              {
                  
                  JobField[j]=RsJobField.getString("JobField_id");
                  j=j++;
              }
             String Query1="";
             for(int i=0;i<=JobField[j].length();i++)
             {
                 
                Query1=Query1+JobField[i];
                 
             }
             
               %>
            <div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav"> 
        <ul>
            <li class="active"><a href="Homepage.jsp"><span>job Vacancy</span></a></li>
            <li ><a href="MyApplication.jsp"><span>Applied Application</span></a></li>
          <li><a href="Editpreference.jsp"><span>Edit Preference</span></a></li>
          <li><a href="MyResume.jsp"><span>My Resume</span></a></li>
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
            <h1>Homepage</h1>
            <%
            out.print(Query1);
            %>
        </form>
    </body>
</html>
<%@include file="Jobseekerfooter.jsp" %>