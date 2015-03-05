<%@ page import="muitofacilweb.Store" %>



<div class="fieldcontain ${hasErrors(bean: storeInstance, field: 'cnpj', 'error')} required">
	<label for="cnpj">
		<g:message code="store.cnpj.label" default="Cnpj" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cnpj" required="" value="${storeInstance?.cnpj}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: storeInstance, field: 'customers', 'error')} ">
	<label for="customers">
		<g:message code="store.customers.label" default="Customers" />
		
	</label>
	<g:select name="customers" from="${muitofacilweb.Customer.list()}" multiple="multiple" optionKey="id" size="5" value="${storeInstance?.customers*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: storeInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="store.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${storeInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: storeInstance, field: 'products', 'error')} ">
	<label for="products">
		<g:message code="store.products.label" default="Products" />
		
	</label>
	<g:select name="products" from="${muitofacilweb.Product.list()}" multiple="multiple" optionKey="id" size="5" value="${storeInstance?.products*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: storeInstance, field: 'razaoSocial', 'error')} required">
	<label for="razaoSocial">
		<g:message code="store.razaoSocial.label" default="Razao Social" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="razaoSocial" required="" value="${storeInstance?.razaoSocial}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: storeInstance, field: 'sellers', 'error')} ">
	<label for="sellers">
		<g:message code="store.sellers.label" default="Sellers" />
		
	</label>
	<g:select name="sellers" from="${muitofacilweb.Seller.list()}" multiple="multiple" optionKey="id" size="5" value="${storeInstance?.sellers*.id}" class="many-to-many"/>

</div>

