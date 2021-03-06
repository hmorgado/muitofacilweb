
<%@ page import="muitofacilweb.Seller" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'seller.label', default: 'Seller')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-seller" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-seller" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="login" title="${message(code: 'seller.login.label', default: 'Login')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'seller.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="username" title="${message(code: 'seller.username.label', default: 'Username')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${sellerInstanceList}" status="i" var="sellerInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${sellerInstance.id}">${fieldValue(bean: sellerInstance, field: "login")}</g:link></td>
					
						<td>${fieldValue(bean: sellerInstance, field: "password")}</td>
					
						<td>${fieldValue(bean: sellerInstance, field: "username")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${sellerInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
