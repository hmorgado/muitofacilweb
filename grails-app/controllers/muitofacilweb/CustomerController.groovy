package muitofacilweb


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CustomerController {

    def globalStore

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Customer.findAllWhere(store: Store.get(globalStore.id)) , model:[customerInstanceCount: Customer.count()]
    }

    def show(Customer customerInstance) {
        respond customerInstance
    }

    def create() {
        respond new Customer(params)
    }

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

    @Transactional
    def save(Customer customerInstance) {
        if (customerInstance == null) {
            notFound()
            return
        }

        if (customerInstance.hasErrors()) {
            respond customerInstance.errors, view:'create'
            return
        }

        //i know., i know...
        customerInstance.store = Store.get(globalStore.id)
        customerInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'customer.label', default: 'Customer'), customerInstance.id])
                redirect customerInstance
            }
            '*' { respond customerInstance, [status: CREATED] }
        }
    }

    def edit(Customer customerInstance) {
        respond customerInstance
    }

    @Transactional
    def update(Customer customerInstance) {
        if (customerInstance == null) {
            notFound()
            return
        }

        if (customerInstance.hasErrors()) {
            respond customerInstance.errors, view:'edit'
            return
        }

        customerInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Customer.label', default: 'Customer'), customerInstance.id])
                redirect customerInstance
            }
            '*'{ respond customerInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Customer customerInstance) {

        if (customerInstance == null) {
            notFound()
            return
        }

        customerInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Customer.label', default: 'Customer'), customerInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'customer.label', default: 'Customer'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
