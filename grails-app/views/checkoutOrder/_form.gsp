<%@ page import="muitofacilweb.CheckoutOrder" %>



<div class="fieldcontain ${hasErrors(bean: checkoutOrderInstance, field: 'obs', 'error')} ">
	<label for="obs">
		<g:message code="checkoutOrder.obs.label" default="Obs" />
		
	</label>
	<g:textField name="obs" value="${checkoutOrderInstance?.obs}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: checkoutOrderInstance, field: 'customer', 'error')} ">
	<label for="customer">
		<g:message code="checkoutOrder.customer.label" default="Customer" />
		
	</label>
	<g:select id="customer" name="customer.id" from="${muitofacilweb.Customer.list()}" optionKey="id" value="${checkoutOrderInstance?.customer?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: checkoutOrderInstance, field: 'items', 'error')} ">
	<label for="items">
		<g:message code="checkoutOrder.items.label" default="Items" />
		
	</label>
	<g:select name="products" from="${muitofacilweb.Product.list()}" multiple="multiple" optionKey="id" size="5" class="many-to-many"/>

</div>

