<%@ taglib prefix="s" uri="/struts-tags" %>

<%@include file="header.jsp" %>
<br><br>
<center><h2>Enter the details <img src="images/details.png" alt="location"></h2></center>

<center>

<s:actionerror/>

<s:actionmessage />

<s:form action="editpg2" method="post">
    
    <s:textfield name="id" label="Id" size="12"/>
    
    <s:select name="city" label="Select City" list="{'Chandigarh','Mohali'}" />
    
    <s:textfield name="sector" label="Sector" />
    
    <s:textarea name="address" label="Address" rows="4" cols="20" />
    
    <s:textfield name="sizes" label="Size(In terms of BHK)" />
    
    <s:select name="floors" label="Select Floor" list="{'Ground','First','Second'}" />

    <s:textfield name="rent" label="Rent" />
    
    <s:textfield name="type" label="Type" />
    
    <s:select name="sharing" label="Sharing" list="{'Yes','No'}" />
 
    <s:select name="sharing_people" label="Number of People Sharing" list="{'0','1','2','3','4','5'}"/>
 
    <s:textarea name="terms" label="Terms and Conditions" rows="4" cols="20" />

    <s:checkboxlist name="facilities" label="Facilities" list="{'AC','Non-AC','Invertor','Almirah','Bed','Refrigerator','Gyser','Wi-Fi'}" />
    
    <s:textfield name="phone" label="Contact Number" />
    
    <s:textfield name="email" label="Email ID" />
    
    <s:submit value="submit" cssClass="btn btn-primary"/>
</s:form>

<a href="admin_home.jsp">Home</a>
<br><br><br><br><br>
<%@include file="footer.jsp" %>
