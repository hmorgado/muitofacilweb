<%@ page import="muitofacilweb.Seller" %>



<div class="fieldcontain ${hasErrors(bean: sellerInstance, field: 'login', 'error')} required">
	<label for="login">
		<g:message code="seller.login.label" default="Login" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="login" required="" value="${sellerInstance?.login}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: sellerInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="seller.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${sellerInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: sellerInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="seller.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${sellerInstance?.username}"/>

</div>

