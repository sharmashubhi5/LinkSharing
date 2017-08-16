package link_sharing

import grails.plugin.springsecurity.annotation.Secured


@Secured(['ROLE_ADMIN'])
class TopicController {
    def springSecurityService
    def index() {
        def vis = ["PUBLIC", "PRIVATE"]
        [vis:vis]
    }
    def updateTopic = {
        def topic = new Topic(name: params.name, visibility: params.visibility)
        //topic.visibility.Visibility(params.visibility)
        topic.createdBy = lookupUser()
        def subscription = new Subscription(topic: topic, user: lookupUser(), accessGrant: true)
        topic.addToSubscriptions(subscription)
        topic.save(flush:true, failOnError:true)
        render "Topic saved successfully!"
    }

    private lookupUser(){
        return springSecurityService.getCurrentUser()
    }
}
