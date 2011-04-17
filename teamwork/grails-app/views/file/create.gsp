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
		
		<g:uploadForm action="save" class="inputform">
			<fieldset>
				<legend>upload a file</legend>
				<dl>
					<dt>
						Name <span class="requiredfield">required</span>
					</dt>
					<dd>
						<g:textField name="name" value="${file.name}" size="35" class="largeinput" />
					</dd>
					<dt>
						File <span class="requiredfield">required</span>
					</dt>
					<dd>
						<input name="data" type="file" value="file..."/>
					</dd>
					<dt>File description <span class="requiredfield">required</span></dt>
					<dd><g:textArea name="description" value="${file.description}" cols="40" rows="10"/></dd>
				</dl>
			</fieldset>
			<g:submitButton name="Save" value="Save" />|<g:link action="create">Cancel</g:link>
		</g:uploadForm>
		</div>
		
	</div>
</body>
</html>