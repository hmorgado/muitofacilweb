package muitofacilweb

class Product {

    String name
    String externalId
    BigDecimal price
    String obs

    static constraints = {
    	obs nullable: true
    }
    
    String toString() {
    	"${this.id} - ${this.name}"
    }
}
