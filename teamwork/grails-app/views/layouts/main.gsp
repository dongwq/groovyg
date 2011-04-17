<!DOCTYPE html>
<html>
    <head>
        <title><g:layoutTitle default="Grails" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="stylesheet" href="${resource(dir:'css',file:'teamwork.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:layoutHead />
        <g:javascript library="application" />
    </head>
    <body>
        <div id="spinner" class="spinner" style="display:none;">
            <img src="${resource(dir:'images',file:'spinner.gif')}" alt="${message(code:'spinner.alt',default:'Loading...')}" />
        </div>
	     <div id="grailsLogo" style="display:none;"><a href="http://${request.serverName}:${request.serverPort}${request.contextPath}"><img src="${resource(dir:'images',file:'grails_logo.png')}" alt="Grails" border="0" /></a></div>
	
		<div id="header">
			<h3>
				<g:link controller="home">Teamwork</g:link>&nbsp;&nbsp;&nbsp;&nbsp;<g:render template="/home/login"></g:render>
			</h3>
		</div>
		<div id="navigationcontainer">
			<span id="navigation"> <g:link controller="home" class="navigationitem">Home</g:link> </span>
		</div>
		<g:layoutBody />
    </body>
</html>