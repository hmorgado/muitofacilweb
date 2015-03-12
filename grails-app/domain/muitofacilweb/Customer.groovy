package muitofacilweb

class Customer {

    String externalId
	String name
	String cnpj
	String razaoSocial
	
    static constraints = {
		cnpj(nullable: true)
		razaoSocial(nullable: true)
    }

    static mapping = {
    	name defaultValue: "'Heitor'"
    }

    String toString() {
    	"${this.id} - ${this.name}"
    }
}
