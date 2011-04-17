<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="layout" content="main"/>
<title>HOme 4 Messages </title>
</head>
<body>
  	<div class="body">
		<div class="newactions">
			<span class="newmessage"> <g:link controller="message" action="create">
				Post Message
		</g:link> </span>
		</div>
		<div id="">
	  		<g:each in="${messages}" var="message">
	  			<div class="amessage">
		  			<div class="meesagettitle">
		  				Title:
		  				<g:message code="message.title" args="${[message.title]}" encodeAs="HTML"/>
		  			</div>
		  			<div class="messagebody">
		  				Detail:<g:message code="message.detail" args="${[message.detail]}" encodeAs="HTML"/>
		  			</div>
	  			</div>
	  		</g:each>
  		</div>
	</div>
</body>
</html>