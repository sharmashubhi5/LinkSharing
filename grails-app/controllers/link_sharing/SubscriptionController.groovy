package link_sharing

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER'])
class SubscriptionController {
    def springSecurityService
    def index() { }
    def updateSubscription = {
        String topicName = params.topic
        def topic =  Topic.findByName(topicName)
        def subscription = new Subscription(topic: topic, user: lookupUser())
        subscription.accessGrant = (topic.visibility.value() == 'PUBLIC')
        topic.addToSubscriptions(subscription)
        topic.save(flush:true)
        render "Subscribed!"
    }


    private lookupUser(){
        return springSecurityService.getCurrentUser()
    }
}
