package muitofacilweb

class Store {

	static hasMany = [
		sellers: Seller, 
		customers: Customer, 
		products: Product
	]

	String cnpj
	String razaoSocial

    static constraints = {
    }
}
