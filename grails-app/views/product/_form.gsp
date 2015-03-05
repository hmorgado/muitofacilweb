<%@ page import="muitofacilweb.Product" %>



<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'obs', 'error')} ">
	<label for="obs">
		<g:message code="product.obs.label" default="Obs" />
		
	</label>
	<g:textField name="obs" value="${productInstance?.obs}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="product.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${productInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="product.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="price" type="number" value="${productInstance.price}" required=""/>

</div>

