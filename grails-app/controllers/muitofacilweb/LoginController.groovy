package muitofacilweb

import javax.servlet.http.Cookie

//@Transactional(readOnly = true)
class LoginController {

    def loginService
    def login = {
        def map = loginService.filterRequest(params)

        if (map.isOkToProceed) {
            def sellerAndToken = generateToken(map)
            response.addCookie(createCookie('seller', sellerAndToken))
            redirect(controller: 'customer', action: 'create')
        } else {
            flash.message = "Usuario ou senha incorretos"
            redirect(uri: '/')
        }
    }

    def logout = {
        response.addCookie(createCookie('seller', '', 0))
        redirect(uri: '/')
    }

    private generateToken(map){
        "${map.loggedSeller.sellerName}#${map.loggedSeller.token}"
    }

    private createCookie(name, value, maxAge = 60 * 60 * 24 * 3){
        Cookie cookie = new Cookie(name, value)
        cookie.path = '/'
        cookie.maxAge = maxAge

        cookie
    }
}
