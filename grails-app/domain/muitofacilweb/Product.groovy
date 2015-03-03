package muitofacilweb

class Product {

    String name
    Long price

    static constraints = {}

    
    String toString() {
    	"${this.id} - ${this.name}"
    }
}
