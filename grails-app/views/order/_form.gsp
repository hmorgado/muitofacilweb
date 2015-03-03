<%@ page import="muitofacilweb.Order" %>



<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'products', 'error')} ">
	<label for="products">
		<g:message code="order.products.label" default="Products" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${orderInstance?.products?}" var="p">
    <li><g:link controller="product" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="product" action="create" params="['order.id': orderInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'product.label', default: 'Product')])}</g:link>
</li>
</ul>


</div>

