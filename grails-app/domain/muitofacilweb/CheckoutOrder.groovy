package muitofacilweb

class CheckoutOrder {

	Customer customer

	static hasMany = [products: Product, customers: Customer, items: Item]

	String obs

    static constraints = {
    }
}
