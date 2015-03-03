package muitofacilweb

class Customer {

	String name
	String cnpj
	String razaoSocial
	
    static constraints = {
    }

    String toString() {
    	"${this.id} - ${this.name}"
    }
}
