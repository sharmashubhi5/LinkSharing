package link_sharing

class Subscription {
    Date dateCreated
    User user
    Boolean accessGrant
    static belongsTo = [topic:Topic]
    static constraints = {
    }
}
