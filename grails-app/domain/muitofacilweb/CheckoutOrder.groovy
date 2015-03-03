package muitofacilweb

class CheckoutOrder {

	static hasMany = [products: Product, customers: Customer]

	String obs

    static constraints = {
    }
}
