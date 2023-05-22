<style>
    .p{
        text-decoration: none;
}
.p:hover{text-decoration:none;}
</style>
<html>
    <head>
        <meta http-equiv="Content-Type" context="text/html; charset=UTF-8">
        <title>OWNER_HOME</title>
    </head>
</html>
<%@ taglib uri="/struts-tags" prefix="s" %>

<%@include file="header.jsp" %>
<style>
.p1{padding-top: 90;
}

</style>

<div class="p1">
<center><h1>Owner Home <img src="images/owner11.png" alt="location"></h1></center>
<h3> WELCOME - <s:property value="#session['user']"/>!</h3>
<table>
<tr><td ><img src="images/owner.png" alt="location"></td>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/pg.png" ></td>


        <td >&nbsp;&nbsp;&nbsp;<img src="images/status1.png" ></td>

          
        <td >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/logout.jpg" alt="location"></td></tr>

<tr>


            <td><h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Manage Property</h4>

<ul><li><a href="post_pg.jsp">Post Pg </a>
</li>
<li>
<a href="editpg.action">Edit Pg</a>
</li>
<li>
<a href="delpg.action">Delete Pg</a>
</li>

                </ul>
                    </td>


                    <td><h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;View Property Bookings</h4><ul>
                    <li><a href="booked_pg.jsp">View Bookings</a></li>
                    </ul>
                    </td>
                    
                    <td><h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change Property Status</h4>
<ul>
 <li> <a href="changestatus.action">Change Status</a>
</li>
                                </ul>
                                </td>
                                
                            <td><h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Logout</h4>
<ul>
  <li><a href="logout.action">Logout</a>
</li>
                                </ul>
                                </td>

                    
                    
</tr>
</table></div>
                            <br><br><br><br><br>
<%@include file="footer.jsp"%>























