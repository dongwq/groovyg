<g:if test="${session.user}">
	welcom:${session.user.username},<g:link controller="home" action="logout">Logout</g:link>
</g:if>
<g:else>
	<g:link controller="home" action="login">Login</g:link>
</g:else>