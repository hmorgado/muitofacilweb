package muitofacilweb

class Item {

	String name
	Long price
	String obs
	Long quantity

    static constraints = {
    	obs nullable: true
    	price nullable: true
    }
}
