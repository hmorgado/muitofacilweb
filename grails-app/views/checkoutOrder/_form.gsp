<%@ page import="muitofacilweb.CheckoutOrder" %>



<div class="fieldcontain ${hasErrors(bean: checkoutOrderInstance, field: 'customers', 'error')} ">
	<label for="customers">
		<g:message code="checkoutOrder.customers.label" default="Customers" />
		
	</label>
	<g:select name="customers" from="${muitofacilweb.Customer.list()}" multiple="multiple" optionKey="id" size="5" value="${checkoutOrderInstance?.customers*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: checkoutOrderInstance, field: 'obs', 'error')} required">
	<label for="obs">
		<g:message code="checkoutOrder.obs.label" default="Obs" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="obs" required="" value="${checkoutOrderInstance?.obs}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: checkoutOrderInstance, field: 'products', 'error')} ">
	<label for="products">
		<g:message code="checkoutOrder.products.label" default="Products" />
		
	</label>
	<g:select name="products" from="${muitofacilweb.Product.list()}" multiple="multiple" optionKey="id" size="5" value="${checkoutOrderInstance?.products*.id}" class="many-to-many"/>

</div>

