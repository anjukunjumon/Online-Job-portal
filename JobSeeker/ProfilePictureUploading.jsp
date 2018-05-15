
  <%@include file="Jobseekerheader.jsp" %>                  
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Choose Profile Picture </title>
        <link href="css/Propicupcss.css" rel="stylesheet" type="text/css">
    </head>
    <body >
          <div class="header">
    <div class="header_resize">
      
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
        
        <form action="FileUploadAction.jsp" enctype="multipart/form-data" method="post">
      

           <div class="Propic">
               <br><label class="registerhead"><span class="regHead">Choose Your Profile Pic</span></label> 
               <div class="PropicCircle" >
                   <label for="propicxfile"><img id="proPic" style="width: 200px;height: 200px;border-radius: 100px" src="images/AddPropic.png"></label>
                  
                   <input type="file" name="propicxfile" id="propicxfile" style="display: none"  > 
               </div>
               
               <input type="submit" name="sub" value="SAVE" style="width: 100px;margin-left: 100px;" >
               <input type="submit" name="cancel" value="SKIP" style="width: 100px;background:  red">
         </div>
        </form>
        <%
         
        %>
        <br>
        <br>
       
  </body>
 
   
</html>
<%@include file="Jobseekerfooter.jsp" %>
