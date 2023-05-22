
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
    <div>
    <s:actionerror cssClass="badge badge-important"/>
    <s:actionmessage cssClass="badge badge-success"/>
<s:form action="login" method ="post" cssClass="form-signin">

    <s:textfield name="username" label="User Name" size="15" cssClass="input-block-level" />

<s:password name="password" label="Password" 
            size="15"  cssClass="input-block-level"/>


    
<s:submit cssClass="btn btn-primary" />

</s:form>
</div>
<a class="btn btn-success" href="signup.jsp" >New Users Registration</a>
</center>
<%@include file="footer.jsp" %>

