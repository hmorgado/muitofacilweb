package muitofacilweb

class Customer {

    String externalId
	String name
	String cnpj
	String razaoSocial
    Store store

    static constraints = {}

    String toString() {
    	"${this.id} - ${this.name}"
    }
}
