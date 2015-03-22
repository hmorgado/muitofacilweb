package muitofacilweb

class CheckoutOrder {

	Customer customer
    String obs

	static hasMany = [
        items: Item
	]

    static constraints = {
    	//o que eu puser aqui nao vai aparecer no form de cadastro
    	obs nullable: true
    	customer nullable: true
    }
}
