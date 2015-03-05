
<%@ page import="muitofacilweb.Store" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'store.label', default: 'Store')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-store" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-store" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list store">
			
				<g:if test="${storeInstance?.cnpj}">
				<li class="fieldcontain">
					<span id="cnpj-label" class="property-label"><g:message code="store.cnpj.label" default="Cnpj" /></span>
					
						<span class="property-value" aria-labelledby="cnpj-label"><g:fieldValue bean="${storeInstance}" field="cnpj"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${storeInstance?.customers}">
				<li class="fieldcontain">
					<span id="customers-label" class="property-label"><g:message code="store.customers.label" default="Customers" /></span>
					
						<g:each in="${storeInstance.customers}" var="c">
						<span class="property-value" aria-labelledby="customers-label"><g:link controller="customer" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${storeInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="store.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${storeInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${storeInstance?.products}">
				<li class="fieldcontain">
					<span id="products-label" class="property-label"><g:message code="store.products.label" default="Products" /></span>
					
						<g:each in="${storeInstance.products}" var="p">
						<span class="property-value" aria-labelledby="products-label"><g:link controller="product" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${storeInstance?.razaoSocial}">
				<li class="fieldcontain">
					<span id="razaoSocial-label" class="property-label"><g:message code="store.razaoSocial.label" default="Razao Social" /></span>
					
						<span class="property-value" aria-labelledby="razaoSocial-label"><g:fieldValue bean="${storeInstance}" field="razaoSocial"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${storeInstance?.sellers}">
				<li class="fieldcontain">
					<span id="sellers-label" class="property-label"><g:message code="store.sellers.label" default="Sellers" /></span>
					
						<g:each in="${storeInstance.sellers}" var="s">
						<span class="property-value" aria-labelledby="sellers-label"><g:link controller="seller" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:storeInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${storeInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
