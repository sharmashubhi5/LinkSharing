package link_sharing

class Topic {
    Visibility visibility
    String name
    User createdBy
    Date dateCreated
    enum Visibility{
        PUBLIC('PUBLIC'), PRIVATE('PRIVATE')
        private final String val
        Visibility(String val) {this.val = val}
        String value() { return val }
    }
    static hasMany = [resources:Resource, subscriptions:Subscription]
    static constraints = {
    }

}


