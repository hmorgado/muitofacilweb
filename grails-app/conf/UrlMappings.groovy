import muitofacilweb.CheckoutOrder

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

        "/"(view:"/index")
        "500"(view:'/error')
	}
}
