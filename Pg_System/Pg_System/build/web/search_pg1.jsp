<style>
    .thead{display:table-header-group}
    

</style>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@include file="header.jsp" %>
<br><br><br><br>
<center><h2>List of PG according to your preference <img src="images/list.png" alt="location"></h2></center>
<table border="10" class="thead">
     <th><font style="color:#6A5ACD ">Image<th><font style="color:#6A5ACD ">Owner<th><font style="color:#6A5ACD ">City<th><font style="color:#6A5ACD ">Sector<th><font style="color:#6A5ACD ">Address<th><font style="color:#6A5ACD ">Size<th><font style="color:#6A5ACD ">Floors<th><font style="color:#6A5ACD ">Rent<th><font style="color:#6A5ACD ">Type<th><font style="color:#6A5ACD ">Sharing<th><font style="color:#6A5ACD ">Sharing People<th><font style="color:#6A5ACD ">Terms<th><font style="color:#6A5ACD ">Facilities<th><font style="color:#6A5ACD ">Phone<th><font style="color:#6A5ACD ">Email<th><font style="color:#6A5ACD ">Status<th><font style="color:#6A5ACD ">Details
     
    <s:iterator id="u" value="#request['pgdata']">
        <tr>
             
            
            <td align="center">
                <img src=images/<s:property value="image" /> width="100" height="100" />
               
            </td>
            
            
            <td align="center">
                <s:property value="name" />
            </td>
           
            
            <td align="center">
                <s:property value="city" />
            </td>
            <td align="center">
                <s:property value="sector" />
            </td>
            <td align="center">
                <s:property value="address" />
            </td>
            <td align="center">
                <s:property value="sizes" />
            </td>
            <td align="center">
                <s:property value="floors" />
            </td>
            <td align="center">
                <s:property value="rent" />
            </td>
            <td align="center">
                <s:property value="type" />
            </td>
            <td align="center">
                <s:property value="sharing" />
            </td>
            <td align="center">
                <s:property value="sharing_people" />
            </td>
            <td align="center">
                <s:property value="terms" />
            </td>
            <td align="center">
                <s:property value="facilities" />
            </td>
            <td align="center">
                <s:property value="phone" />
            </td>
            <td align="center">
                <s:property value="email" />
            </td>
            <td align="center">
                <s:property value="pstatus" />
            </td>
            <td align="center">
         <a href=prop_detail.jsp?id=<s:property value="id"/> >Details</a>
                            
            </td>
        </tr>
    </s:iterator>
</table>
<br><br><br><br><br>
<%@include file="footer.jsp" %>
