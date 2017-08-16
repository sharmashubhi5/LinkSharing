package link_sharing

import grails.plugin.springsecurity.annotation.Secured
import grails.plugin.springsecurity.SpringSecurityService

@Secured(['ROLE_ADMIN','ROLE_USER'])
class TopicShowController {
    def springSecurityService
    def index() { }
    def subTopic(){
        User user = lookupUser()
        def subscriptions = Subscription.findAllByUser(user)
        [subscriptions:subscriptions]
    }
    def unsubTopic(){
        def subscriptions = Subscription.findAllByUser(lookupUser())
        def subtopics  = subscriptions.topic
        def topics = Topic.list()
        topics.removeAll(subtopics as Object[])
        [topics:topics]
    }

    private lookupUser(){
        springSecurityService.getCurrentUser()
    }
}
