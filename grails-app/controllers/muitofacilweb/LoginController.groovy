package muitofacilweb

import javax.servlet.http.Cookie

//@Transactional(readOnly = true)
class LoginController {

    def loginService
    def login = {
        def map = loginService.filterRequest(params)

        if (map.isOkToProceed) {
            def sellerAndToken = generateToken(map)
            response.addCookie(createCookie(sellerAndToken))
            redirect(controller: 'customer', action: 'create')
        } else {
            flash.message = "Usuario ou senha incorretos"
            redirect(uri: '/')
        }
    }

    private generateToken(map){
        "${map.loggedSeller.sellerName}#${map.loggedSeller.token}"
    }

    private createCookie(sellerAndToken){
        Cookie cookie = new Cookie('seller', sellerAndToken)
        cookie.path = '/'
        cookie.maxAge = 60 * 60 * 24 * 3

        cookie
    }
}
