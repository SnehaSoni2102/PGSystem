<style>
    
    .input-block-level{display:block;width:100%;min-height:30px;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}
    
</style>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@include file="header.jsp" %>
<br><br><br><br>
<center><h2>Enter the details<img src="images/details.png" alt="location"></h2></center>
<center>
<s:actionerror/>
<s:actionmessage/>
<s:form action="edituser2" method ="post" >
    <s:textfield name="id" label="Id" size="15" />
  <s:textfield name="username" label="User Name" size="15" />

 <s:password name="password" label="Password" size="15"/>

 <s:radio name="gender" label="Gender"
     list="{'Male', 'Female'}" value="Male"  />

<s:textarea name="address" label="Address" rows="4" cols="17"/>

<s:select name="country" label="Select Country"
          list="{'India', 'Us', 'Uk','Canada'}"/>

<s:textfield name="email" label="Email Id" size="15" />

  <s:submit value="Submit" cssClass="btn btn-primary" />
</s:form>

<a href="admin_home.jsp">Home</a>
</center>
