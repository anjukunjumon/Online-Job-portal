<%-- 
    Document   : Registration
    Created on : 30 Jan, 2018, 7:38:04 PM
    Author     : basilscolu
--%>

<%@page import="java.util.Random"%>
<%@include file="Guestheader.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
     String userid=session.getAttribute("useridentity").toString();
    
           
                          
                   if(request.getParameter("btn_sub")!=null)
                   {
                       response.sendRedirect("../JobSeeker/preference.jsp");
                       
                   }
                         
                         

                    %>
  
    

<%
    String s="";
        if(request.getParameter("btn_savepersonalDetails")!=null)
           
   {
       String fname=request.getParameter("fname").toString();
       String sname= request.getParameter("sname").toString();
       String Fullname=(fname+" "+sname).toString();
  Boolean bb=obj.insert("insert into tbl_personaldetails(id,Title,Name,Country_code,Phone_no,City,2city) VALUES('"+userid+"','"+request.getParameter("titlesel")+"','"+Fullname+"','"+request.getParameter("Countrycode")+"','"+request.getParameter("Phone_no")+"','"+request.getParameter("City")+"','"+request.getParameter("City2")+"')");
       // s="insert into tbl_personaldetails(id,Title,Name,Country_code,Phone_no,email_id,City,2city) VALUES('"+userid+"','"+request.getParameter("titlesel")+"','"+Fullname+"','"+request.getParameter("Countrycode")+"','"+request.getParameter("Phone_no")+"','"+request.getParameter("txt_email")+"','"+request.getParameter("City")+"','"+request.getParameter("City2")+"')";
   if(bb)
   {
   }
   else
   {
       obj.insert("UPDATE tbl_personaldetails pp set pp.Title='"+request.getParameter("titlesel")+"' , pp.Name='"+Fullname+"' , pp.Country_code='"+request.getParameter("Countrycode")+"' , pp.Phone_no='"+request.getParameter("Phone_no")+"' , pp.City='"+request.getParameter("City")+"' , pp.2city='"+request.getParameter("City2")+"' where pp.id='"+userid+"' ");
  
   }
   
       
   }
       %>
       
       <%
        
                 if(request.getParameter("btn_saveEduDetails")!=null)
           
   {
       obj.insert("insert into tbl_edu (userid,did,college,stream,Syr,Eyr,percentage) VALUES('"+userid+"',"
               + "'"+request.getParameter("degreesel")+"','"+request.getParameter("college")+"','"+request.getParameter("Stream")+"','"+request.getParameter("SyearSel")+"','"+request.getParameter("EndYearSel")+"','"+request.getParameter("percentage")+"')");
   s="insert into tbl_edu (userid,did,college,stream,Syr,Eyr,percentage) VALUES('"+userid+"',"
               + "'"+request.getParameter("degreesel")+"','"+request.getParameter("college")+"','"+request.getParameter("Stream")+"','"+request.getParameter("SyearSel")+"','"+request.getParameter("EndYearSel")+"','"+request.getParameter("percentage")+"')";
   }
        
        
        %>
        
        
        
        <%
                 if(request.getParameter("delEdu")!=null)
    {
      int Eduid=Integer.parseInt(request.getParameter("delEdu"));  
      obj.insert("delete from tbl_edu where edu_id='"+Eduid+"'");
    }
                 %>
                 
                 
                 
                 <%
                  if(request.getParameter("btn_beginer")!=null)
                  {
                      obj.insert("insert into tbl_candidateselskill (Skill_id,Slevel_id,userid) VALUES('"+request.getParameter("SkillSelect")+"',1,'"+userid+"')");
                 s="insert into tbl_candidateselskill (Skill_id,Slevel_id,userid) VALUES('"+request.getParameter("SkillSelect")+"',1,'"+userid+"')";
                  
                  }
                 
                 %>
                 
                 
                 <%if(request.getParameter("btn_intermediate")!=null)
                  {
                      obj.insert("insert into tbl_candidateselskill (Skill_id,Slevel_id,userid) VALUES('"+request.getParameter("SkillSelect")+"',2,'"+userid+"')");
                  }
                         
                         %>
                         
                         
                           <%if(request.getParameter("btn_excellent")!=null)
                  {
                      obj.insert("insert into tbl_candidateselskill (Skill_id,Slevel_id,userid) VALUES('"+request.getParameter("SkillSelect")+"',3,'"+userid+"')");
                  }
                         
                         %>
                         
                         
                         <%
                           
                            if(request.getParameter("delSkill")!=null)
    {
      int Cskilid=Integer.parseInt(request.getParameter("delSkill"));  
      obj.insert("delete from tbl_candidateselskill where id='"+Cskilid+"'");
    }
                           %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>                    
  .regcheck
  {
       border-style: solid;
                       border-color: #363636;
                       border-radius:10px; 
                       padding: 5px 5px 5px 5px;
  }
  .regHead
  {
                       border-style:2px solid;
                       border-color: #363636;
                       border-radius:10px; 
                       padding: 5px 40px 5px 40px;
                       background-color:#ff0033;
                       
  }
  

.modalAboutMe {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
   // padding-top: 100px; /* Location of the box */
   // left: 0; 
   // top: 0;
   
    width: 500px; /* Full width */
    height: 500px; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
   
}
.close {
    position: absolute;
    top: 15px;
    right: 35px;
    color: #f1f1f1;
    font-size: 40px;
    font-weight: bold;
    transition: 0.3s;
}

.close:hover,
.close:focus {
    color: #bbb;
    text-decoration: none;
    cursor: pointer;
}

</style>
    </head>
    
        
    
        <div class="main">
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
        <body> 
            <form>
            
            
               
               <div class="modalAboutMe" id="PersonalModel">
                   <br>
                   <br>
                   <br>
                 
                   <label style="font-size: 16px;color:#f1f1f1;">Title</label> <select name="titlesel">
                       <option>Mr </option>
                       <option>Ms </option>
                   </select>
                   <br>
                   <label style="font-size: 16px;color:#f1f1f1;">First Name</label> <input type="text" name="fname">
                    <br>
                   <label style="font-size: 16px;color:#f1f1f1;">Last Name</label> <input type="text"name="sname">
                    <br>
                   <label style="font-size: 16px;color:#f1f1f1;">Phone No:</label>
                   <select class="inputcon" name="Countrycode" style="width: 81px;margin-right:10px;" required=""><option selected="" value="0">Country</option>
                                        
                                    
                                                                  <option value="2" style="color:#004F00">+91</option>

                                 
                                    
                                                                  <option value="3" style="color:#004F00">+1</option>

                                 
                                    
                                                                  <option value="4" style="color:#004F00">+971</option>

                                 
                                    
                                                                  <option value="5" style="color:#004F00">+44</option>

                                 
                                    
                                                                  <option value="6" style="color:#004F00">+61</option>

                                 
                                    
                                                                  <option value="7" style="color:#004F00">+65</option>

                                 
                                    
                                                                  <option value="8" style="color:#004F00">+1</option>

                                 
                                    
                                                                  <option value="9" style="color:#004F00">+974</option>

                                 
                                    
                                                                  <option value="10" style="color:#004F00">+965</option>

                                 
                                    
                                                                  <option value="11" style="color:#004F00">+968</option>

                                 
                                    
                                                                  <option value="12" style="color:#004F00">+973</option>

                                 
                                    
                                                                  <option value="13" style="color:#004F00">+966</option>

                                 
                                    
                                                                  <option value="14" style="color:#004F00">+60</option>

                                 
                                    
                                                                  <option value="15" style="color:#004F00">+49</option>

                                 
                                    
                                                                  <option value="16" style="color:#004F00">+27</option>

                                 
                                    
                                                                  <option value="17" style="color:#004F00">+94</option>

                                 
                                    
                                                                  <option value="18" style="color:#004F00">+62</option>

                                 
                                    
                                                                  <option value="19" style="color:#004F00">+977</option>

                                 
                                    </select>
                   
                  
                   <input type="text" placeholder="Mobile no" name="Phone_no"  maxlength="12">
                   <br>
             
                   <br>
                   <label style="font-size: 16px;color:#f1f1f1;">Current City</label> <select name="City">
                       <option>Mr</option>
                       <option>Ms</option>
                   </select>
                    <br>
                    <label style="font-size: 16px;color:#f1f1f1;">Second City</label> <select name="City2">
                       <option>Mr</option>
                       <option>Ms</option>
                   </select>
                   
                    <br>
                        <input type="submit" name="btn_savepersonalDetails" value="SAVE" >
            
           <span class="close" id="personolamodelclose">&times;</span> 
        </div>
                 
       <!--   ---------------------------------------------------------------------------------------- -->
           
       <div class="modalAboutMe" id="EducationModel">
                <br>
                <br>
                <br>
                <label style="font-size: 16px;color:#f1f1f1;">Degree tye</label><select onchange="degreeType(this.value)">
                    <option>Bachelor</option>
                    <option>Master</option>
                </select>
                <br>
                <label style="font-size: 16px;color:#f1f1f1;">Degree </label><select id="degreetype" name="degreesel">
                </select>
                    <br>
                    
                    <label style="font-size: 16px;color:#f1f1f1;">College </label>
                    <input type="text" name="college">
                    <br>
                    <label style="font-size: 16px;color:#f1f1f1;">Stream </label>
                    <input type="text" name="Stream">
                    <br>
                      <label style="font-size: 16px;color:#f1f1f1;">Start Yr </label>
                      <select name="SyearSel"><option>2000</option></select>
                      <label style="font-size: 16px;color:#f1f1f1;">End Yr </label>
                      <select name="EndYearSel"><option>2000</option></select>
                      <br>
                       <label style="font-size: 16px;color:#f1f1f1;">Percentage </label>
                    <input type="text" name="percentage">
                       <br>
                        <input type="submit" name="btn_saveEduDetails" value="SAVE" >
                 
                
                 <span class="close" id="EduModelClose" >&times;</span> 
            </div>
       
  <!--   ----------------------------------------------------------------------------------------------  -->     
           
            <div class="modalAboutMe" id="SkillModel">
                <br>
                <br>
                <label style="font-size: 16px;color:#f1f1f1;">Skill :</label><select onchange="visibleSkilllevel()"name="SkillSelect"><option value="0">-- --</option>
                    <%
                 ResultSet rsskill=obj.Select("select * from tbl_skills");
                 while(rsskill.next())
                 {
                 %>
                 <option value="<%=rsskill.getString("skill_id")%>" ><%=rsskill.getString("skill")%></option>
                 <%
                 }
                 %>
                
                </select>
                 <div style="display: none;" id="skilllevelmodel">
                     <label style="font-size: 16px;color:#f1f1f1;">Which would you give yourself ?</label> <br>
                     <input type="submit" name="btn_beginer" value="Beginer" style="background: : #ffff00"><br>
                      <input type="submit" name="btn_intermediate" value="Intermediate" style=" background:#00ff33"><br>
                       <input type="submit" name="btn_excellent" value="Excellent" style="background:  #ff0033"><br>
                     
                 </div>
                 
            <span class="close" id="SkillModelClose" >&times;</span>     
            </div>
        
  <!-- ---------------------- -->
  
      <div class="modalAboutMe" id="Jobmodel">
          <br>
          <br>
          <label  style="font-size: 16px;color:#f1f1f1;">Profile </label><input type="text"name="txt_organization"><br>
          <label style="font-size: 16px;color:#f1f1f1;">organization </label><input type="text"name="txt_location"><br>
          <label style="font-size: 16px;color:#f1f1f1;">Location </label><input type="text"><br>
           <label style="font-size: 16px;color:#f1f1f1;">Start Yr </label>
           <select name="SyearSel"><option>2000</option></select><br>
                      <label style="font-size: 16px;color:#f1f1f1;">End Yr </label>
                      <select name="EndYearSel"><option>2000</option></select>
                      <br>
                      <br>
                      <label>Short Description about of work done(max up to 250 characters</label><textarea name="descriptiontextarea"></textarea>
           <input type="submit" name="btn_savejob" value="SAVE" >
          
         <span class="close" id="Jobmodelclose" >&times;</span>    
      </div> 
      
      <%
                 
                          if(request.getParameter("btn_savejob")!=null)
           
   {
       obj.insert("insert into tbl_jobdetails (userid,organization,location,Syear,Eyear,Description) VALUES('"+userid+"',"
               + "'"+request.getParameter("txt_organization")+"','"+request.getParameter("txt_location")+"','"+request.getParameter("SyearSel")+"','"+request.getParameter("EndYearSel")+"','"+request.getParameter("descriptiontextarea")+"')");
       s="insert into tbl_jobdetails (userid,organization,location,Syear,Syear,Eyear,Description) VALUES('"+userid+"',"
               + "'"+request.getParameter("txt_organization")+"','"+request.getParameter("txt_location")+"','"+request.getParameter("SyearSel")+"','"+request.getParameter("EndYearSel")+"','"+request.getParameter("descriptiontextarea")+"')";
  
   }
        
                 
                 %>
  
  
  <!-- ---------------------- -->
  
  
  <!-- ---------------------- -->
  
      <div class="modalAboutMe" id="WorkSampleModel">
          <br>
          <br>
          <label style="font-size: 16px;color:#f1f1f1;">Add your work sample links here(if any)</label><br>
          <label style="font-size: 16px;color:#f1f1f1;">Blog Link :</label><input type="text"name="txt_blog" placeholder="http://myblog.com"><br>
          <label style="font-size: 16px;color:#f1f1f1;">Git Hub :</label><input type="text" name="txt_git" placeholder="http://github.com"><br>
                              <label style="font-size: 16px;color:#f1f1f1;">Play store Developer A/C :</label><input type="text" name="txt_play" placeholder="http://play.google.com/store/apps/details"><br>
                              <label style="font-size: 16px;color:#f1f1f1;">behance Portfolio :</label><input type="text" name="txt_behance" placeholder="http://behance.net/my_profile"><br>
                    <label style="font-size: 16px;color:#f1f1f1;">Other Portfolio Link :</label><input type="text" name="txt_other" placeholder="http://myportfolio.com"><br>
  <input type="submit" name="btn_saveworksample" value="SAVE" >
  <%
                     if(request.getParameter("btn_saveworksample")!=null)
           
   {
       obj.insert("insert into tbl_worksample (userid,blog,github,playstore,behance,other)  VALUES('"+userid+"',"
               + "'"+request.getParameter("txt_blog")+"','"+request.getParameter("txt_git")+"','"+request.getParameter("txt_play")+"','"+request.getParameter("txt_behance")+"','"+request.getParameter("txt_other")+"')");
      s="insert into tbl_worksample (userid,blog,github,playstore,behance,other)  VALUES('"+userid+"',"
               + "'"+request.getParameter("txt_blog")+"','"+request.getParameter("txt_git")+"','"+request.getParameter("txt_play")+"','"+request.getParameter("txt_behance")+"','"+request.getParameter("txt_other")+"')";
   }         
                          %>

          
          
          
         <span class="close" id="WorkSampleModelclose" >&times;</span>    
      </div> 
  
  
  <!-- ---------------------- -->
  
   
  <!-- ---------------------- -->
  
      <div class="modalAboutMe" id="TraininModel">
          <br>
          <br>
          
          
          
         <span class="close" id="TraininModelClose" >&times;</span>    
      </div> 
  
  
  <!-- ---------------------- -->
   <!-- ---------------------- -->
   
      <div class="modalAboutMe" id="AdditionalDetailsModel">
          <br>
          <br>
          
           <label style="font-size: 20px;color:#f1f1f1;">Example :</label><br>
           <label style="font-size: 14px;color:#f1f1f1;">. Secured 1st rank among 500 entries in national level <br> story writing competition Organised by MCA ilahia dpt</label><br><br>
           <label style="font-size: 20px;color:#f1f1f1;">Add Your Details :</label><textarea name="additionaltxt"></textarea>
            <input type="submit" name="btn_additional" value="SAVE" >
         <span class="close" id="AdditionalDetailsModelClose" >&times;</span>    
      </div> 
      <%
            if(request.getParameter("btn_additional")!=null)
                  {
                      obj.insert("insert into tbl_additionaldetails (userid,ADDdetails) VALUES('"+userid+"','"+request.getParameter("additionaltxt")+"')");
                  }
                         
                         %>        
      
  
  <!-- ---------------------- -->
  
  
  <div style="overflow: scroll;
    overflow-x: hidden; height: 600px;">
  
  <table class="table table-bordered" >
           
            <th colspan="2"><h2 style="font-family: serif"><center>SignUp</center></h2></th>
                
            
            <tr><td colspan="2" ><span id="alertSpan" style="color: red"> </span></td></tr>
            <tr>
                <td>Personal Details:</td> 
                
                
                <td>
                    <% ResultSet rsp=obj.Select("SELECT * from tbl_personaldetails p where p.id='"+userid+"'");
                    if(rsp.next())
                    {
                   
                      %>
                        <label style="margin-left: 20px;">
                          Name :  
                        </label> <label><%=rsp.getString("title") %>. <%=rsp.getString("Name") %></label>
                        <br>
                         <label style="margin-left: 20px;">
                          Phone No :  
                        </label> <label><%=rsp.getString("Country_code") %> <%=rsp.getString("Phone_no") %></label>
                        <br>
                        <label style="margin-left: 20px;">
                         Current City :  
                        </label> <label><%=rsp.getString("City") %> </label>
                        <br>
                      <label style="margin-left: 20px;">
                         Second City :  
                        </label> <label><%=rsp.getString("2city") %> </label>
                        <br>
                         <label style="margin-left: 20px;color: blue;cursor: pointer" id="PersonalDetails">
                     Edit
                        </label>
                      <%
                       
                     
                    }
                   else
                   {
                       %>
                       <label style="margin-left: 20px;color: blue;cursor: pointer" id="PersonalDetails">
                        Add Personal Details
                        </label>
                       <%
                            
                   }
                        %>
                    
                    
                    
                
                </td>
             </tr><br>
            
              <tr><td>Education :</td>
                  
                  <%
                   int i=0;
                    ResultSet Rcount=obj.Select("select COUNT(edu_id) from tbl_edu ed where ed.userid='"+userid+"'");
                    while(Rcount.next())
                    {
                       i=Integer.parseInt(Rcount.getString("COUNT(edu_id)"));
                       
                       
                    }
                    if(i>0)
                    {
                        %>
                        <td> 
                            <%
                    ResultSet rse=obj.Select(" select * from tbl_edu ed, tbl_degree d,tbl_education edu where ed.did=d.did and edu.eid=d.eid and ed.userid='"+userid+"'");
                    while(rse.next())
                    {
                  %>
                  <label style="margin-left: 20px;">
                      <span style="color: #00ff33"><%=rse.getString("DegreeType") %> </span><span style="color: blue">  Edit</span><span > <a href="Registration.jsp?delEdu=<%=rse.getString("edu_id")%>" style="color: #ff0033">Delete</a></span>
                          <br>
                        Degree :  <%=rse.getString("degre") %> <br>
                        college :<%=rse.getString("college") %><br>
              stream :<%=rse.getString("stream") %><br>
              Duration :<%=rse.getString("Syr")%> - <%=rse.getString("Eyr")%> <br>
                     percentage :<%=rse.getString("percentage") %><br> </label>
              <br>

                 
                    <%
                        
                    }
                    %>
                    
                                                                            <label style="margin-left: 20px;color: blue;cursor: pointer" id="EducationalDetails">Add Education Details</label>
 </td>
                    <%
                    }
                    else
                    {
                        %>
                                          <td><label style="margin-left: 20px;color: blue;cursor: pointer" id="EducationalDetails">Add Education Details</label></td></tr>

                        <%
                    }
                        
                    %>
               
              
                    <tr><td>Skill:</td><td>
                            <%
                    ResultSet rsCskill=obj.Select("select * from tbl_candidateselskill cs, tbl_skills s,tbl_skillevel sl where cs.Skill_id=s.skill_id and cs.Slevel_id=sl.Slevel_id and cs.userid='"+userid+"'");
                    while(rsCskill.next())
                    {
                        %>
                        <label><%=rsCskill.getString("skill")%>--><%=rsCskill.getString("skillevel")%></label> <span><a href="Registration.jsp?delSkill=<%=rsCskill.getString("id")%>" style="color: #ff0033">Delete</a></span><br>
                        <%
                    }
                   
                    %>
                            
                            <br>
                            <label style="margin-left: 20px;color: blue;cursor: pointer" id="skillAddModel">Add</label></td></tr>
                
                 <tr><td>Jobs :</td><td> 
                         <%
                    ResultSet rsjob=obj.Select("select * FROM tbl_jobdetails jd where jd.userid='"+userid+"' ");
                    while(rsjob.next())
                    {
                        %>
                        <label> Organization : <%=rsjob.getString("organization")%></label><br>
                         <label> location : <%=rsjob.getString("location")%></label><br>
                        <label> Starting Year : <%=rsjob.getString("Syear")%></label><br>
                        <label> Ending Year : <%=rsjob.getString("Eyear")%></label><br>
                          <label> Description : <%=rsjob.getString("Description")%></label><br>



                         
                        
                        <%
                    }
                    %>
                         
                         
                         <label style="margin-left: 20px;color: blue;cursor: pointer" id="jobAddmodel">Add</label></td></tr>
                  
                   <tr><td>Trainng :</td><td><label style="margin-left: 20px;color: blue;cursor: pointer" id="TraininModelAdd">Add</label></td></tr>
                    <tr><td>Work Sample :</td>
                        
                        <td>
                            <%
                    ResultSet rsworksample=obj.Select("select * from tbl_worksample ws where ws.userid="+userid);
                    while(rsworksample.next())
                    {
                        %>
                         
                         <label >Blog Link :</label><a style="visibility: visible;color: blue;" href="<%=rsworksample.getString("blog")%>"><%=rsworksample.getString("blog")%></a><br>
                         <label >playstore Link :</label><a style="visibility: visible;color: blue;" href="<%=rsworksample.getString("playstore")%>"><%=rsworksample.getString("playstore")%></a><br>
                       <label >github Link :</label><a style="visibility: visible;color: blue;" href="<%=rsworksample.getString("github")%>"><%=rsworksample.getString("github")%></a><br>
                        <label >behance Link :</label><a style="visibility: visible;color: blue;" href="<%=rsworksample.getString("behance")%>"><%=rsworksample.getString("behance")%></a><br>
                         <label >other Link :</label><a style="visibility: visible;color: blue;" href="<%=rsworksample.getString("other")%>"><%=rsworksample.getString("other")%></a><br>
                          
                                                                                                    
          <%
                    }
                    %>
                            
                            <label style="margin-left: 20px;color: blue;cursor: pointer" id="WorkSampleAddModel">Add</label></td></tr>
                     <tr><td>Additional Details :</td>
              <td>
                  
                  <%
                    ResultSet rsAdd=obj.Select("select * from tbl_additionaldetails ws where ws.userid="+userid);
                    while(rsAdd.next())
                    {
                        %>
                        <label>.<%=rsAdd.getString("ADDdetails")%></label><br>
                  <%
                        }
                    %>
                  
                  <label style="margin-left: 20px;color: blue;cursor: pointer" id="AdditionalDetailsModelAdd">Add</label>
                  
                        
                  </td></tr> 
                     
  
                     
                     <tr><td colspan="2"><input type="submit" name="btn_sub" value="SAVE" ></td>
    </tr><br>  
  
        </table>
  </div>
 </form>    
      
            
    </body>
     <script type="text/javascript">
    var HelpMe = document.getElementById("modalAboutMe");
PersonalDetails.onclick = function(){
    
    PersonalModel.style.display = "block";
   
 var span = document.getElementById("personolamodelclose");


// When the user clicks on <span> (x), close the modal
span.onclick = function() { 
    PersonalModel.style.display = "none";
}   
}




 
EducationalDetails.onclick = function(){
    
    EducationModel.style.display = "block";
   
 var span2 = document.getElementById("EduModelClose");


// When the user clicks on <span> (x), close the modal
span2.onclick = function() { 
    EducationModel.style.display = "none";
}   
}


skillAddModel.onclick = function(){
    
    SkillModel.style.display = "block";
   
 var span3 = document.getElementById("SkillModelClose");


// When the user clicks on <span> (x), close the modal
span3.onclick = function() { 
    SkillModel.style.display = "none";
}   
}
function visibleSkilllevel()
{
    skilllevelmodel.style.display="block";
    alert("workinggggg");
}



jobAddmodel.onclick = function(){
    
    Jobmodel.style.display = "block";
   
 var span4 = document.getElementById("Jobmodelclose");


// When the user clicks on <span> (x), close the modal
span4.onclick = function() { 
    Jobmodel.style.display = "none";
}   
}

WorkSampleAddModel.onclick = function(){
    
    WorkSampleModel.style.display = "block";
   
 var span5 = document.getElementById("WorkSampleModelclose");


// When the user clicks on <span> (x), close the modal
span5.onclick = function() { 
    WorkSampleModel.style.display = "none";
}   
}

TraininModelAdd.onclick = function(){
    
    TraininModel.style.display = "block";
   
 var span6 = document.getElementById("TraininModelClose");


// When the user clicks on <span> (x), close the modal
span6.onclick = function() { 
    TraininModel.style.display = "none";
}   
}



AdditionalDetailsModelAdd.onclick = function(){
    
    AdditionalDetailsModel.style.display = "block";
   
 var span7 = document.getElementById("AdditionalDetailsModelClose");


// When the user clicks on <span> (x), close the modal
span7.onclick = function() { 
    AdditionalDetailsModel.style.display = "none";
}   
}

function degreeType(d)
    {
       // var Cuser = document.getElementById("Cuser").value;
       // var cpass = document.getElementById("Cpass").value;
      alert(d);
       // alert(cpass);
      $.ajax({url:"ajaxdegree.jsp?degree="+d, 
         success: function(result){
         alert(result);
      $("#degreetype").html(result);
    }});
    }

    </script>
</html>
<%@include file="GuestFooter.jsp" %>