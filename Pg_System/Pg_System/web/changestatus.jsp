<%@include file="header.jsp" %>

<%@taglib prefix="s" uri="/struts-tags" %>
<br><br><br><br><br>
<table>
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
                <s:property value="pstatus" />
            </td>
            <td>
                <s:url id="v" action="bk">
 <s:param name="u"><s:property value="id"></s:property></s:param>
                </s:url>
                <s:a href="%{v}">Booked</s:a>
            </td>
              <td>
                <s:url id="v" action="vk">
 <s:param name="u"><s:property value="id"></s:property></s:param>
                </s:url>
                <s:a href="%{v}">Vacant</s:a>
            </td>
            
            
            
            
        </tr>
    </s:iterator>
</table>

<%@include file="footer.jsp" %>