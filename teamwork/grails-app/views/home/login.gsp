<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="layout" content="main"/>
<title>Login Page </title>
</head>
<body>
  	<div class="body">
		<div class="newactions">
			<span class="newmessage"> <g:link controller="message" action="create">
				Post Message
		</g:link> </span>
		</div>
		<div id="">
	  		<g:form action="logon">
	  			<fieldset>
	  				<legend><g:message code="home.user.login" default="Please login"/></legend>
	  				username:<g:textField name="user.username"></g:textField>
	  				<br/>
	  				password:<g:passwordField name="user.password"></g:passwordField>
	  				<br/>
	  				<g:submitButton name="logon">Login</g:submitButton>|<g:link action="index">Cancel</g:link>
	  			</fieldset>
	  		</g:form>
  		</div>
	</div>
</body>
</html>