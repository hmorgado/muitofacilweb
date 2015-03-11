import muitofacilweb.CheckoutOrder
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

        "/"(view:"/index")
        "500"(view:'/error')
	}
}
