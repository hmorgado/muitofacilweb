
<%@ page import="muitofacilweb.CheckoutOrder" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'checkoutOrder.label', default: 'CheckoutOrder')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-checkoutOrder" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-checkoutOrder" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list checkoutOrder">
			
				<g:if test="${checkoutOrderInstance?.customer}">
				<li class="fieldcontain">
					<span id="customer-label" class="property-label"><g:message code="checkoutOrder.customer.label" default="Customer" /></span>
					
						<span class="property-value" aria-labelledby="customer-label"><g:link controller="customer" action="show" id="${checkoutOrderInstance?.customer?.id}">${checkoutOrderInstance?.customer?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${checkoutOrderInstance?.items}">
				<li class="fieldcontain">
					<span id="items-label" class="property-label"><g:message code="checkoutOrder.items.label" default="Items" /></span>
					
						<g:each in="${checkoutOrderInstance.items}" var="i">
						<span class="property-value" aria-labelledby="items-label"><g:link controller="item" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${checkoutOrderInstance?.obs}">
				<li class="fieldcontain">
					<span id="obs-label" class="property-label"><g:message code="checkoutOrder.obs.label" default="Obs" /></span>
					
						<span class="property-value" aria-labelledby="obs-label"><g:fieldValue bean="${checkoutOrderInstance}" field="obs"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${checkoutOrderInstance?.products}">
				<li class="fieldcontain">
					<span id="products-label" class="property-label"><g:message code="checkoutOrder.products.label" default="Products" /></span>
					
						<g:each in="${checkoutOrderInstance.products}" var="p">
						<span class="property-value" aria-labelledby="products-label"><g:link controller="product" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:checkoutOrderInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${checkoutOrderInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
