<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="layout" content="main"/>
<title>Insert title here</title>
</head>
<body>
  <div class="body">
	<div>
		<g:if test="${flash.message}">
			<div class="info">
				${flash.message}
			</div>
		</g:if>
		<g:hasErrors bean="${message}">
			<div class="errors">
				<g:renderErrors bean="${message}" as="list"></g:renderErrors>
			</div>
		</g:hasErrors>
		
		<g:form action="save" class="inputform">
			<fieldset>
				<legend>create a message</legend>
				<dl>
					<dt>
						Title <span class="requiredfield">required</span>
					</dt>
					<dd>
						<g:textField name="title" value="${message.title}" size="35" class="largeinput" />
					</dd>
					<dt>
						Message detail <span class="requiredfield">required</span>

					</dt>
					<dd>
						<g:textArea name="detail" value="${message.detail}" cols="40" rows="10" />
					</dd>
				</dl>
			</fieldset>
			<g:submitButton name="Save" value="Save" />|<g:link action="create">Cancel</g:link>
		</g:form>
		</div>
		
	</div>
</body>
</html>