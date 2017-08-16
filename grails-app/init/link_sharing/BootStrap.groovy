package link_sharing

class BootStrap {

    def init = { servletContext ->
        def adminRole = Role.findOrSaveWhere(authority: "ROLE_ADMIN")
        def user = User.findOrSaveWhere(username: "aa", password: "aa")
        if(!user.authorities.contains(adminRole)){
            UserRole.create(user, adminRole, true)
        }

        def userRole = Role.findOrSaveWhere(authority: "ROLE_USER")
        def useru = User.findOrSaveWhere(username: "bb", password: "bb")
        if(!useru.authorities.contains(userRole)){
            UserRole.create(useru, userRole, true)
        }
    }
    def destroy = {
    }
}
