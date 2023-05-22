
<%@include file="header.jsp" %>
<br><br><br><br>
<center><h2>PG BOOKING FORM <img src="images/book.png" alt="location"></h2></center>
<html>
<head>
<title>Payment</title>
<form action="booking1.jsp" method="post">
    <table align="center">
  <tr>
      <td colspan="2" align="center"><u><font size="5" color="red"><b>FILL THE FOLLOWING FORM CAREFULLY</b></font></u>
  <tr><td><font size="4" color="red"><b>CARD HOLDER'S NAME:</b>
  <td>
 <input type="text" name="un" size="24">
 <tr><td> <b><font size="4" color="red">Card No:-&nbsp; 
             </font>
          <td><input type="text" name="card" size="24">
     <tr>      <td><b><font size="4" color="red">PASSWORD:-&nbsp; </font></b>
          <td>
      <input type="password" name="pass" size="24">
       <tr>    <td> <b><font size="4" color="red">CONFIRM PASSWORD:-</font></b>
          <td>
      <input type="password" name="cpass" size="24">
     <tr>      <td><b><font size="4" color="red">Booking AMOUNT TO BE PAID:</font></b>
          <td>
    <input type="text" name="amount" value="1000" size="24">
          <tr> <td>
<input type="submit" value="CONFIRM BOKING AMOUNT" name="C" class="btn btn-primary"><br>
<input type="hidden" name="pid" value="<%=request.getParameter("id")%>" >
     
</table>
</form>

</html>
<br><br><br><br>
<%@include file="footer.jsp" %>
