<%@taglib prefix="s" uri="/struts-tags" %>
<%@include file="header.jsp" %>
<br><br><br><br>
<center><h2>List of Users<img src="images/users.jpg" alt="location"></h2></center>


<center><table class="table-condensed table-bordered table-striped table-hover" >
     <th><font style="color:#6A5ACD ">Username<th><font style="color:#6A5ACD ">Password<th><font style="color:#6A5ACD ">Gender<th><font style="color:#6A5ACD ">Address<th><font style="color:#6A5ACD ">Country<th><font style="color:#6A5ACD ">Email<th><font style="color:#6A5ACD ">Edit

        <s:iterator id="u" value="#request['mydata']">
             <tr>
              <td><s:property value="username"/></td>
                 <td><s:property value="password"/></td>
                 <td><s:property value="gender"/></td>
                  <td><s:property value="address"/></td>
                <td><s:property value="country"/></td>
                <td><s:property value="email"/></td>
                 
                 <td>
                  <div class="btn-group">   
                      <a href="#" class="btn btn-success">select</a>
                      <a href="#" class="btn btn-success dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></a>
                     <ul class="dropdown-menu">
                         <li>
                    <s:url id="v" action="deluser1">
                         <s:param name="u"><s:property value="username"></s:property></s:param>
                     </s:url>
                     <s:a href="%{v}" >Delete</s:a>         
                         </li>     
                         
                         
                     </ul>
                  </div>
                 </td>
                     
             </tr>
                 </s:iterator>
     </table>
<a href="admin_home.jsp">Home</a>

</center>
<br><br>
<%@include file="footer.jsp" %>