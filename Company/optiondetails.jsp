
<%@include file="companyheader.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 
            <%
                
                String option_id="",option_name="",question_id="",option_isanswer="";
                String editid="";
                if(request.getParameter("eid")!=null)
                {
                    String sel="select * from tbl_option where option_id='"+request.getParameter("eid")+"'";
                    ResultSet rs=obj.Select(sel);
                    if(rs.next())
                    {
                        editid=request.getParameter("eid");
                        option_id=rs.getString("option_id");
                        option_name=rs.getString("option_name");
                        question_id=rs.getString("question_id");
                        option_isanswer=rs.getString("option_isanswer");
                       
                    }
                }
                
                
                if(request.getParameter("did")!=null)
                {
            String del="delete from tbl_option where option_id='"+request.getParameter("did")+"'";
            boolean b=obj.insert(del);
           // out.print(b);
            if(b)
            {
                response.sendRedirect("optiondetails.jsp");
            }
                }
            %>
                <%
                    String submit=request.getParameter("sub");
                    if(submit!=null)
                    {
                        
                         option_id=request.getParameter("option_id");
                          option_name=request.getParameter("option_name");
                         question_id=request.getParameter("question_name");
                         option_isanswer=request.getParameter("option");
                        
                        if(request.getParameter("hid")!="")
                         {
                             String up="update tbl_option set option_name='"+option_name+"',question_id='"+question_id+"',option_isanswer='"+option_isanswer+"' where option_id='"+request.getParameter("hid")+"'";
                             boolean b=obj.insert(up);
                             if(b)
                                     {
                                      response.sendRedirect("optiondetails.jsp");
                                     }
                             //out.println(up);
                             
                         }
                         else
                   {for(int i=0;i<4;i++){
                       option_name=request.getParameter("option_name"+i);
                        option_isanswer=request.getParameter("option"+i);
                        String ins="insert into tbl_option(option_name,question_id,option_isanswer)values('"+option_name+"','"+question_id+"','"+option_isanswer+"')";
                        boolean b=obj.insert(ins);
                        //out.println(b);
                   }
                    }
                    }
                    %>
                    <form name="option">
                     <table>
                        <th colspan="2"><h1><center>OPTION DETAILS</center></h1></th>
                        <tr><td>Question Name:</td><td><select name="question_name" id="sel">
                                    
                                    <option value="select">select</option>
                                    <%
                                        String sel="select * from tbl_question";
                                        ResultSet rs=obj.Select(sel);
                                        while(rs.next())
                                        {%>
                                        <option value="<%=rs.getString("question_id")%>" <% if(question_id.equals(rs.getString("question_id"))){%> selected=" " <%} %>><%=rs.getString("question_name")%></option>
                                        <% }

%>
                                </select>
                            </td>
                        </tr><%for(int i=0;i<4;i++){%>
                        <tr><td>Option <%=i%>:</td><td><input type="text" value="<%=option_name%>" name="option_name<%=i%>"></td>
                        
<td>option is:<input type="radio" name="option<%=i%>" value="True"> True<input type="radio" name="option<%=i%>" value="False"> False<br>
 <%}%>

<tr><td><input type="submit" name="sub" value="SAVE"></td>
         <td><input type="reset" name="cancel" value="CANCEL"></td></tr>
           <input type="hidden" name="hid" value="<%=editid%>">                        
                                </select>
                    </table>
                          
                  <table>
                      <th colspan="4"><h1><center>OPTION DETAILS</center></h1></th>
                   <tr><td><center>Option Name</center></td>
                  <td><center>Question</center></td>
                <td><center>option status</center></td></tr>
                
                   <%
                       String dis= "select * from tbl_option c,tbl_question d where d.question_id=c.question_id";
                       ResultSet rs1=obj.Select(dis);
                     while(rs1.next())
                          {%>
                      <tr><td><%=rs1.getString("option_name")%></td>                       
                       <td><%=rs1.getString("question_id")%></td>    
                       <td><%=rs1.getString("option_isanswer")%></td> 
                     <td><a href="optiondetails.jsp?eid=<%=rs1.getString("option_id")%>"><br>Edit</a><a href="optiondetails.jsp?did=<%=rs1.getString("option_id")%>">Delete</a></td></tr>

                         
                       <% }

                %> 
                   
            
                  </table>
            </form>
        
    </body>
</html>
<%@include file="companyfooter.jsp" %>
