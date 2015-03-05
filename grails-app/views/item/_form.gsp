<%@ page import="muitofacilweb.Item" %>



<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'obs', 'error')} ">
	<label for="obs">
		<g:message code="item.obs.label" default="Obs" />
		
	</label>
	<g:textField name="obs" value="${itemInstance?.obs}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="item.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${itemInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="item.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="price" type="number" value="${itemInstance.price}" required=""/>

</div>

