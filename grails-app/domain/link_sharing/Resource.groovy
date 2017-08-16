package link_sharing

class Resource {
    String message
    User createdBy
    Date dateCreated
    static belongsTo = [topic:Topic]
    static constraints = {
    }
}
