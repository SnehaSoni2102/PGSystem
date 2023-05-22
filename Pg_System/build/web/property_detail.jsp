
<%@page import="model.pg_detail" %>
<%@page import="java.sql.*" %>

<%@page import="mypack.conn" %>
<%@include file="header.jsp" %>


<h1>Property Details</h1>

<%
    
    conn c1= new conn();
    ResultSet rs= c1.s.executeQuery("select * from property where id="+request.getParameter("id"));
    
    pg_detail p= new pg_detail();
    
    if(rs.next()){

      p.setId(rs.getInt("id"));
      p.setCity(rs.getString("city"));
      p.setSector(rs.getString("sector"));
      p.setAddress(rs.getString("address"));
      p.setRent(rs.getString("rent"));
      p.setType(rs.getString("type"));
      p.setName(rs.getString("name"));
      p.setFloors(rs.getString("floors"));
      p.setSharing(rs.getString("sharing"));
      p.setSharing_people(rs.getString("sharing_people"));
      p.setTerms(rs.getString("terms"));
      p.setFacilities(rs.getString("facilities"));
      p.setPhone(rs.getString("phone"));
      p.setEmail(rs.getString("email"));
      p.setImage(rs.getString("image"));
    }
%>

<table align="centre" class="table-condensed table bordered table-striped table-hower">
    <tr>
        <td colspan="2">
            <img src=images/<%=p.getImage()%> width="300" height="300"/>
            
        </td>
    </tr>
    <tr>Owner<td><%=p.getName()%>
        </td>
    <tr>
        <td>
            City<td><%=p.getCity()%>
        </td>
        
        <tr>
        <td>
            Sector<td><%=p.getSector()%>
        </td>
        
        <tr>
        <td>
            Floors<td><%=p.getFloors()%>
        </td>
    
        <tr>
        <td>
            Rent<td><%=p.getRent()%>
        </td>
        
        <tr>
        <td>
            Sharing<td><%=p.getSharing()%>
        </td>
        
        <tr>
        <td>
            Sharing People<td><%=p.getSharing_people()%>
        </td>
        
        <tr>
        <td>
            Terms<td><%=p.getTerms()%>
        </td>
        
        <tr>
        <td>
            facilities<td><%=p.getFacilities()%>
        </td>
        
        <tr>
        <td>
            Phone<td><%=p.getPhone()%>
        </td>
        
        <tr>
        <td>
            Email<td><%=p.getEmail()%>
        </td>
        
        <tr>
           
            <td colspan="2">
                <a href="booking.jsp?id=<%=p.getId()%>">Book Pg</a>
        </td>
        
</table>