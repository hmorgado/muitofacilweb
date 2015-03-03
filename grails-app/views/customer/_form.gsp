<%@ page import="muitofacilweb.Customer" %>



<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'cnpj', 'error')} required">
	<label for="cnpj">
		<g:message code="customer.cnpj.label" default="Cnpj" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cnpj" required="" value="${customerInstance?.cnpj}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="customer.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${customerInstance?.name}"/>

</div>

