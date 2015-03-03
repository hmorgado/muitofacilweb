package muitofacilweb

class Customer {

	String name
	String cnpj

    static constraints = {
    }

    String toString() {
    	"${this.id} - ${this.name}"
    }
}
