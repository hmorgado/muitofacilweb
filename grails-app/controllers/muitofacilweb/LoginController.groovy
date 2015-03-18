package muitofacilweb

import javax.servlet.http.Cookie

//@Transactional(readOnly = true)
class LoginController {

    def loginService
    def cookieService

    def login = {

        def map = loginService.filterRequest(params, request)

        if (map.isOkToProceed) {
            def sellerAndToken = "${map.loggedSeller.sellerName}#${map.loggedSeller.token}"
            println "seller and token: " + sellerAndToken
            Cookie cookie = new Cookie('seller', sellerAndToken)
            cookie.path = '/'
            cookie.maxAge = 60 * 60 * 24 * 3
            response.addCookie(cookie)
            redirect(controller: 'customer', action: 'create')
        }
    }
}
