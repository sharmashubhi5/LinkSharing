package link_sharing

import grails.plugin.springsecurity.annotation.Secured

@Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
class UserController {
    def updateUser = {
        def userRole = Role.findOrSaveWhere(authority: "ROLE_USER")
        def user = User.findOrSaveWhere(username: params.username,
                password: params.password,
                email: params.email,
                firstName: params.firstName,
                lastName: params.lastName)
        if(!user.authorities.contains(userRole)){
            UserRole.create(user, userRole, true)
        }
        redirect(controller : "login")
    }
}