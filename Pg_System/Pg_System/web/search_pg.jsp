<style>
    .select{width:220px;background-color:#DC143C;border:1px solid #ccc; font-color:#DC143C;}
</style>

<%@ taglib prefix="s" uri="/struts-tags" %>
<%@include file="header.jsp" %>
<br><br><br><br>
<center><h2>Enter Your Preference <img src="images/search11.png" alt="location"></h2></center>
<center>
<s:actionerror/>
<s:actionmessage/>
<s:form action="searchpg" >
    <s:doubleselect label="Select City (Sector)" name="city" list="{'Chandigarh', 'Mohali','Pkl'}" doubleName="sector" doubleList="top == 'Chandigarh' ? {'22','23','21','34'}: top == 'Mohali' ? {'65','66','67','68'} : {'1','2','3','4'}" />    
   
<s:select name="rent" label="Select Rent"
          list="{'2000-3000', '3000-4000','4000-5000','5000-6000','6000-7000','7000-12000'}" />

<s:select name="type" label="Select Sector"
          list="{'Boys', 'Girls','All'}" />
<br>
<s:submit cssClass="btn btn-primary"  value="Submit"/>

</s:form>
</center>
<br><br><br><br>
<%@include file="footer.jsp" %>




