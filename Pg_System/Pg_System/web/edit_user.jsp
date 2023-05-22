<style>
    .thead{display:table-header-group}
    

</style>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@include file="header.jsp" %>
<br><br><br><br>
<center><h2>List of Users<img src="images/users.jpg" alt="location"></h2></center>


<center>
<table border="10" class="thead">
    <th><font style="color:#6A5ACD ">Username<th><font style="color:#6A5ACD ">Password<th><font style="color:#6A5ACD ">Gender<th><font style="color:#6A5ACD ">Address<th><font style="color:#6A5ACD ">Country<th><font style="color:#6A5ACD ">Email<th><font style="color:#6A5ACD ">Edit

 <s:iterator id="u" value="#request['mydata']">
             <tr>
                          <td align="center">
    <s:property value="username"/></td>
                          <td align="center">
                     <s:property value="password"/></td>
                          <td align="center">
                     <s:property value="gender"/></td>
                          <td align="center">
                      <s:property value="address"/></td>
                          <td align="center">
                    <s:property value="country"/></td>
                          <td align="center">
                    <s:property value="email"/></td>
                 
                          <td align="center">

                     <s:url id="v" action="edituser1">
                         <s:param name="u"><s:property value="username"></s:property></s:param>
                     </s:url>
                     <s:a href="%{v}">Edit</s:a>
             </tr>
                 </s:iterator>
     </table>
</center>

