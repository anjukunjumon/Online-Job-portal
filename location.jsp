<%-- 
    Document   : location
    Created on : 3 Feb, 2018, 4:36:50 PM
    Author     : basilscolu
--%>
<%@include file="AdminHeader.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String Location="",Id="";
    
    if(request.getParameter("btn_submit")!=null)
    {
        
        if(!request.getParameter("hiddenid").equals(""))
        {
           
            obj.insert("update tbl_location set location='"+request.getParameter("txt_location")+"' where id='"+request.getParameter("hiddenid")+"'");
        }
        else
        {
        obj.insert("insert into tbl_location (location) VALUES('"+request.getParameter("txt_location")+"')");
           }
        
    }
    if(request.getParameter("del")!=null)
    {
     
      obj.insert("delete from tbl_location where id='"+request.getParameter("del")+"'");
    }
    
    if(request.getParameter("edit")!=null)
    {
      
       ResultSet rs1=obj.Select("select * from tbl_location where id='"+request.getParameter("edit")+"'");
       while(rs1.next())
       {
       Location=rs1.getString("location");
       Id=rs1.getString("id");
       
    }
    }
   %> 
<html>
    <head>
       
        <link href="CSS/AdminCss.css" rel="stylesheet" type="text/css" />
      
        <title>Location</title>
    </head>
    <body>
       
        <form class="Malayali_campaignrightthree" style="margin-top: 150px">
            
            <input type="hidden" name="hiddenid" value="<%=Id%>">
            
            
                   
            <div class="clear"></div>
            <div class="ReligionForm_details">
                <div class="registerhead"><label style="color: #ff0033">Location Entry</label></div>
                <table>
                    <tr>
                        <td><div class="Religion_innerregisterform_new" ><label class="religionlabel">Location</label></div></td><td><div class="Religion_innerregisterform_new"><input type="text" name="txt_location" placeholder="Enter Location" class="regtxtbox" value="<%=Location%>"></div></td>
                    </tr>
                    <tr><td></td><td><div class="Religion_innerregisterform_new" ><input type="submit" value="save" name="btn_submit" class="campaign_buttonnew">
                                  <input type="submit" value="Cancel" name="btn_cancel" class="campaign_buttonnew cancelbtn"> </div></td>
                </tr>
                </table>
                <!--table searching start here-->
                       
               
                         
                
                 <div class="Religion_innerregisterform_table">
                 <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name">
                         
                     <table id="myTable" >
                            
                             <tr class="header" >
                              <th style="width:60%;">Body Type</th>
                                <th style="width:40%;">Edit</th>
                               <th style="width:40%;">Delete</th>
                             </tr>
                             <% ResultSet rs=obj.Select("select * from tbl_location");
                             while(rs.next())
                             {
                           
                             %>
                             <tr>
                                <td>
                                    <%=rs.getString("location") %>
                                </td>
                               
                                <td>
                                    <a href="location.jsp?edit=<%=rs.getString("id")%>"><input type="button" class="button_link" value="edit">
                                    </a>
                                </td>
                                <td>
                                    <a href="location.jsp?del=<%=rs.getString("id")%>"><input type="button" class="button_link cancel" value="delete"></a>
                                </td>
                                   
                            </tr>
                             
                            <% 
                             }
                            
                            %>  
                               
                        </table>
                </div>
                                        <!--table searching end here-->

            </div>
            
                     
        </form>
      
                            <%
                             
                             %>
    </body>
    
</html>

<%@include file="AdminFooter.jsp" %>
