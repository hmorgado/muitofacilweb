package muitofacilweb

class CheckoutOrder {

	Customer customer

	static hasMany = [ 
		items: Item
	]

	String obs

    static constraints = {
    }
}
