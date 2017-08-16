package link_sharing

import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER', 'ROLE_ADMIN'])
class ResourceController{
    def springSecurityService
    def index() {
        User user = lookupUser()
        def subscriptions = Subscription.findAllByUser(user)
        subscriptions.removeAll{ (!it.accessGrant) }
        def topics = subscriptions.topic.name
        [topics:topics]
    }
    def updateResource = {
        String topicName = params.topic
        def topic =  Topic.findByName(topicName)
        def resource = new Resource(message: params.message, createdBy: lookupUser(), topic: topic)
        topic.addToResources(resource)
        topic.save(flush:true, failOnError: true)
        render "save successful"
        def resources = currentUserTimeline()
        //def resource  = new Resource(message: params.message, topic: params.topic)
        //resource.createdBy = lookupUser()
        //resource.save()

    }
    def showResource(){
        String topicName = params.topic
        Topic topic = Topic.findByName(topicName)
        def resources = Resource.findAllByTopic(topic)
        render(view: "showResource", model:[resources:resources, topic:topic])
    }
    private currentUserTimeline(){
        def usr = lookupUser()
        def r = Resource.createCriteria()
        def resources = r.list(){
            eq('createdBy',usr)
            order('dateCreated')
        }
        resources
    }

    private lookupUser(){
        return springSecurityService.getCurrentUser()

    }
}
