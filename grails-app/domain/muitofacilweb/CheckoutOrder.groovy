package muitofacilweb

class CheckoutOrder {

	Customer customer
    //ArrayList<Product> products = []


    String obs

    static mappings = {
    	//items joinTable: [name: 'checkout_order_item',
    	//				  key: 'checkout_order_id',
    	//				  column: 'item_id']
    	//items cascade: 'all,delete'
    }

	static hasMany = [
        items: Item
	]

    static transients = ['products']

    static constraints = {
    	//o que eu puser aqui nao vai aparecer no form de cadastro
    	obs nullable: true
    	customer nullable: true
    }
}
