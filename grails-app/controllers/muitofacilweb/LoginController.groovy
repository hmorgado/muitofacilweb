package muitofacilweb


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

//@Transactional(readOnly = true)
class LoginController {

    def loginService

    def login = {
        if (loginService.filterRequest(params)) {
            redirect(controller: 'customer', action: 'create')
        }
    }
}
