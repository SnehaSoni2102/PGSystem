


<%@page import="java.sql.*" %>

<%@page import="mypack.conn" %>
<%@include file="header.jsp" %>
<br><br><br><br>
<center><h2> Your booking is <img src="images/confirm.jpg" alt="location"></h2></center>


<%
    conn c1 = new conn();
    String u = request.getParameter("un");
    String card = request.getParameter("card");
    String dt = (new java.util.Date()).toString();
    String amt = request.getParameter("amount");
  String pid = request.getParameter("pid");
    c1.s.executeUpdate("insert into booking values (null,'"+u+"','"+card+"','"+dt+"',"+amt+","+pid+")");
     
    
    %>

    
 <%@include file="footer.jsp" %>
