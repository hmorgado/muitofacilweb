package muitofacilweb

class Store {

	static hasMany = [
		sellers: Seller, 
		customers: Customer, 
		products: Product
	]

	String cnpj
	String password
	String razaoSocial


    static constraints = {
    }
}
