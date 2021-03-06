package muitofacilweb

class Item {

	String name
	BigDecimal price
	String obs
	Long quantity

    static constraints = {
    	obs nullable: true
    	price nullable: true
    }

    static mapping = {
        price sqlType: 'decimal(19,4)'
    }
}