<%@ page import="muitofacilweb.CheckoutOrder" %>



<div class="fieldcontain ${hasErrors(bean: checkoutOrderInstance, field: 'customer', 'error')} required">
	<label for="customer">
		<g:message code="checkoutOrder.customer.label" default="Customer" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="customer" name="customer.id" from="${muitofacilweb.Customer.list()}" optionKey="id" required="" value="${checkoutOrderInstance?.customer?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: checkoutOrderInstance, field: 'items', 'error')} ">
	<label for="items">
		<g:message code="checkoutOrder.items.label" default="Items" />
		
	</label>
	<g:select name="items" from="${muitofacilweb.Item.list()}" multiple="multiple" optionKey="id" size="5" value="${checkoutOrderInstance?.items*.id}" class="many-to-many"/>

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

