
<%@include file="header.jsp" %>



<%@ taglib prefix="s" uri="/struts-tags" %>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<center>
<s:actionerror/>
<s:actionmessage/>
<s:form action="signup" method ="post" enctype="multipart/form-data">

    <s:select name="type" label="Select Type"
          list="{'owner', 'customer'}"/>

    
  <s:textfield name="username" label="User Name" size="15" />

  <s:password name="password" label="Password" size="15"/>
 <s:radio name="gender" label="Gender"
     list="{'Male', 'Female'}" value="Male"  />

<s:textarea name="address" label="Address" rows="4" cols="20"/>

<s:select name="country" label="Select Country"
          list="{'India', 'Us', 'Uk','Canada'}"/>

<s:textfield name="email" label="Email Id" />

<s:file name="myfile" label="Image(Browse)" />

  <s:submit value="Submit" />
</s:form>



</center>
<%@include file="footer.jsp" %>


