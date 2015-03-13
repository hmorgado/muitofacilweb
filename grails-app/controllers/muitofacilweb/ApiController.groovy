package muitofacilweb

import grails.converters.JSON
import grails.converters.XML
import groovy.xml.MarkupBuilder

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

class ApiController {

    def test = {
        def json = request.getJSON()

        def validCustomers = []
        def invalidCustomers = []

        json.customers.each{ jsonCustomer ->

            def customer
            customer = Customer.findByExternalId(jsonCustomer.externalId)

            if (!customer) {
                customer = new Customer()
            }

            try {
                customer.with {
                    externalId = jsonCustomer.externalId
                    name = jsonCustomer.name
                    razaoSocial = jsonCustomer.razaoSocial
                    cnpj = jsonCustomer.cnpj
                }
                if (customer.save(flush: true)) {
                    validCustomers << customer
                } else {
                    invalidCustomers << customer
                }
            } catch (e){
                invalidCustomers << customer
            }
        }
        render "Clientes salvos: ${validCustomers*.externalId} \nClientes invalidos: ${invalidCustomers*.externalId}"
    }

}