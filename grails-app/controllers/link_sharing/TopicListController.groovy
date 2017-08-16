package link_sharing

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class TopicListController {

    def index() {
        def requests = Subscription.findAllByAccessGrant(false)
        [requests:requests]
    }
    def subscribe(){
        Topic topic = Topic.get(params.topic)
        User user = User.get(params.user)
        def subscription = Subscription.findByTopicAndUser(topic,user)
        subscription.accessGrant = true
        subscription.save(failOnError:true,flush:true)
        redirect(controller:TopicListController, action:index())
    }
}
