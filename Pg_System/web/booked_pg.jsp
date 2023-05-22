

<%@page import="model.pg_detail"%>
<%@page import="java.sql.*" %>

<%@page import="mypack.conn" %>
<%@include file="header.jsp" %>
<br><br><br>
<h1> Property Booking Details </h1>


<table align="center"  class="table-condensed table-bordered table-striped table-hover">
   
    <%
    conn c1 = new conn();
   ResultSet rs =  c1.s.executeQuery("select * from property,booking where property.id=booking.pid");
     while(rs.next())
     {

         %>
 <tr>
        <td colspan="2">
          <img src=images/<%=rs.getString("image")%> width="300" height="300" />    
            
        </td>
         <tr>
         <td>
             Owner <td> <%=rs.getString("name")%>
            
        </td>
         <tr>
         <td>
            city <td> <%=rs.getString("city")%>
            
        </td>
         <tr>
         <td>
            sector<td> <%=rs.getString("sector")%>
            
        </td>
         <tr>
         <td>
            size<td> <%=rs.getString("size")%>
            
        </td>
         <tr>
         <td>
            floors<td> <%=rs.getString("floors")%>
            
        </td>
         <tr>
         <td>
            rent<td> <%=rs.getString("rent")%>
        </td>
         <tr>
         <td>
            type<td> <%=rs.getString("type")%>
            
        </td>
         <tr>
         <td>
            sharing<td> <%=rs.getString("sharing")%>
            
        </td>
         <tr>
         <td>
         
        sharing people<td> <%=rs.getString("sharing_people")%>
             
         </td>
          <tr>
         <td>
         
        terms<td> <%=rs.getString("terms")%>
         </td>
          <tr>
         <td>
         
        facilities <td> <%=rs.getString("facilities")%>
         </td>
          <tr>
         <td>
         
        phone  <td> <%=rs.getString("phone")%>
         </td>
          <tr>
         <td>
         
        email<td> <%=rs.getString("email")%>
         </td>
          <tr>
          <td>
         
        Customer name <td> <%=rs.getString("cname")%>
         </td>  
        <tr>  
            <td>
         
       Paid Amount<td> <%=rs.getString("amount")%>
         </td>
          <tr>
           <td>
         
        Date of Booking<td> <%=rs.getString("dt")%>
         </td> 
          <tr>
        
         <% } %>
</table>
         <br><br><br><br><br><br> 
         
 <%@include file="footer.jsp" %>
