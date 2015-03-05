package muitofacilweb



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CheckoutOrderController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CheckoutOrder.list(params), model:[checkoutOrderInstanceCount: CheckoutOrder.count()]
    }

    def show(CheckoutOrder checkoutOrderInstance) {
        respond checkoutOrderInstance
    }

    def create() {
        respond new CheckoutOrder(params)
    }

    @Transactional
    def save(CheckoutOrder checkoutOrderInstance) {
        if (checkoutOrderInstance == null) {
            notFound()
            return
        }

        if (checkoutOrderInstance.hasErrors()) {
            respond checkoutOrderInstance.errors, view:'create'
            return
        }

        fillOutItems(checkoutOrderInstance)

        checkoutOrderInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'checkoutOrder.label', default: 'CheckoutOrder'), checkoutOrderInstance.id])
                redirect checkoutOrderInstance
            }
            '*' { respond checkoutOrderInstance, [status: CREATED] }
        }
    }

    def edit(CheckoutOrder checkoutOrderInstance) {
        respond checkoutOrderInstance
    }

    @Transactional
    def update(CheckoutOrder checkoutOrderInstance) {
        if (checkoutOrderInstance == null) {
            notFound()
            return
        }

        if (checkoutOrderInstance.hasErrors()) {
            respond checkoutOrderInstance.errors, view:'edit'
            return
        }

        checkoutOrderInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CheckoutOrder.label', default: 'CheckoutOrder'), checkoutOrderInstance.id])
                redirect checkoutOrderInstance
            }
            '*'{ respond checkoutOrderInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CheckoutOrder checkoutOrderInstance) {

        if (checkoutOrderInstance == null) {
            notFound()
            return
        }

        checkoutOrderInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CheckoutOrder.label', default: 'CheckoutOrder'), checkoutOrderInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    private fillOutItems(checkoutOrderInstance){
        def products = params.products
        
        products.each { id ->
            def item = new Item()
            def product = Product.get(id)
            item.with{
                name = product.name
                //quantity = product.quantity
                price = product.price
                //obs = product.obs
            }

            checkoutOrderInstance.addToItems(item)
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'checkoutOrder.label', default: 'CheckoutOrder'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
