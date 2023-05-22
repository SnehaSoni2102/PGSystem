<%@ taglib prefix="s" uri="/struts-tags" %>

<%@include file="header.jsp" %>
<br><br>
<center><h2>ADD A NEW PG <img src="images/add1.png" alt="location"></h2></center>

<center>

<s:actionerror/>
<s:actionmessage/>
<s:form action="addpg" method ="post" enctype="multipart/form-data">
    
<s:textfield name="name" label="Owner Name" />

<s:select name="city" label="Select City"
          list="{'Chandigarh', 'Mohali'}"/>
<s:textfield name="sector" label="Sector" />
<s:textarea name="address" label="Address" rows="4" cols="20"/>
<s:textfield name="sizes" label="Size" />
<s:select name="floors" label="Select Floor"
          list="{'Ground', 'First','Second'}"/>
<s:textfield name="rent" label="rent" />

<s:select name="type" label="Sharing"
          list="{'Boys', 'Girls','All'}"/>

<s:select name="sharing" label="Sharing"
          list="{'Yes', 'No'}"/>
<s:select name="sharing_people" label="No of People Sharing"
          list="{'0', '1','2','3','4','5'}"/>
<s:textarea name="terms" label="Terms & Conditions" rows="4" cols="20"/>

  <s:checkboxlist name="facilities" label="Facilities"
          list="{'Ac', 'Non-Ac', 'Invertor','Almirah','Bed','Refrigerator','Gyser','Wi-Fi'}"/>
<s:textfield name="phone" label="Phone" />
<s:textarea name="email" label="Email" />
 <s:file name="myfile" label="Image(Browse)" />

  <s:submit value="Submit" cssClass="btn btn-primary"/>
</s:form>
<a href="admin_home.jsp">Home</a>


</center>
<br><br><br><br>
<%@include file="footer.jsp" %>



