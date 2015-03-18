package muitofacilweb

class Product {

    String name
    String externalId
    BigDecimal price
    String obs
    Store store

    static constraints = {
    	obs nullable: true
    }

    static mapping = {
        price sqlType: 'decimal(19,4)'
    }
    
    String toString() {
    	"${this.id} - ${this.name}"
    }
}
