<style>
    .p{
        text-decoration: none;
}
.p:hover{text-decoration:none;}
</style>
<html>
    <head>
        <meta http-equiv="Content-Type" context="text/html; charset=UTF-8">
        <title>ADMIN_HOME</title>
    </head>
</html>
<%@ taglib uri="/struts-tags" prefix="s" %>

<%@include file="header.jsp" %>
<style>
.p1{padding-top: 100;
}

</style>

<div class="p1">
<center><h1>Admin Home</h1></center>
<h3> WELCOME ,<s:property value="#session['user']"/>!</h3>
<table >
<tr><td align="center"><img src="images/index.jpg" alt="location"></td>
    <td align="center"><img src="images/index1.jpg" ></td>


        <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp<img src="images/verify.png" ></td>

    <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/verify.png">
          
        <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/logout.jpg" alt="location"></td></tr>

<tr>


            <td align="center"><h4>User Management</h4>
                <ul>
  <li><a href="deluser.action"> Delete Users </a>
</li>
<li>
<a href="edituser.action">Edit Users </a>
</li>

                </ul>
                    </td>


                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h4>PG Management</h4>
                        <ul><li>
<a href="add_pg.jsp">Add New Pg</a>
</li>
<li>
<a href="editpg.action">Edit Pg</a>
</li>
<li>
<a href="delpg.action">Delete Pg</a>
</li>

</ul>
                    </td>

                    
                        <td><h4><center>Property Verification</center></h4>
<ul>         <li>
                             <a href="verify.action" >Verify Property</a>
                             </li>
    </ul>  </td>             
                    <td ><h4><center>Change Password</center></h4>
                        <ul>    <li><a href="changepassword.jsp">Change Password</a> 
                        </li></ul></td>
                        
                        <td ><h4><center>Logout</center></h4>
                            <ul><li><a href="login.jsp" Class="p">Logout</a> 
                                     </li></ul></td>
</tr>
</table></div>
<%@include file="footer.jsp"%>























