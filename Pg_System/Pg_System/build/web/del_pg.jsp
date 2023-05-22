<%@ taglib prefix="s" uri="/struts-tags" %>

<%@include file="header.jsp" %>
<br><br>
<center><h2>Select the property to be deleted <img src="images/delete.png" alt="location"></h2></center>

<center>
<table border="10" class="table-condensed table-bordered table-striped table-hover" >
     <th><font style="color:#6A5ACD ">City<th><font style="color:#6A5ACD ">Sector<th><font style="color:#6A5ACD ">Address<th><font style="color:#6A5ACD ">Size<th><font style="color:#6A5ACD ">Floors<th><font style="color:#6A5ACD ">Rent<th><font style="color:#6A5ACD ">Type<th><font style="color:#6A5ACD ">Sharing<th><font style="color:#6A5ACD ">Sharing People<th><font style="color:#6A5ACD ">Terms<th><font style="color:#6A5ACD ">Facilities<th><font style="color:#6A5ACD ">Phone<th><font style="color:#6A5ACD ">Email<th><font style="color:#6A5ACD ">Status
    <s:iterator id="u" value="#request['mydata']">
        <tr>
            <td>
                <s:property value="city" />
            </td>
            <td>
                <s:property value="sector" />
            </td>
            <td>
                <s:property value="address" />
            </td>
            <td>
                <s:property value="sizes" />
            </td>
            <td>
                <s:property value="floors" />
            </td>
            <td>
                <s:property value="rent" />
            </td>
            <td>
                <s:property value="type" />
            </td>
            <td>
                <s:property value="sharing" />
            </td>
            <td>
                <s:property value="sharing_people" />
            </td>
            <td>
                <s:property value="terms" />
            </td>
            <td>
                <s:property value="facilities" />
            </td>
            <td>
                <s:property value="phone" />
            </td>
            <td>
                <s:property value="email" />
            </td>
            <td>
                <s:url id="v" action="delpg1">
                <s:param name="u"><s:property value="address"></s:property></s:param>
                </s:url>
                <s:a href="%{v}">Delete</s:a>
            </td>
        </tr>
    </s:iterator>
</table>
<a href="admin_home.jsp">Home</a>
<br><br><br><br><br>

<%@include file="footer.jsp" %>