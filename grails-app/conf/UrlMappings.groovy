import muitofacilweb.CheckoutOrder
import muitofacilweb.Customer
import muitofacilweb.Product

class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/checkoutOrder/vendas"(resource: CheckoutOrder){
            controller: "checkoutOrder"
            action: "vendas"
        }

        "/product/test"(resource: Product){
            controller: 'product'
            action: 'test'
        }

        "/customer/test"(resource: Customer){
            controller: 'customer'
            action: 'test'
        }

        "/api/customer/test"(resource: Customer){
            controller: 'customer'
            action: 'test'
        }

        "/"(view:"/login")
        "500"(view:'/error')
	}
}
