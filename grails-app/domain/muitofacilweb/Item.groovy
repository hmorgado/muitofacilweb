package muitofacilweb

class Item {

	String name
	Long price
	String obs

	static mapping = {
		//table 'item'
	}

    static constraints = {
    	obs nullable: true
    	price nullable: true
    }
}
