<!DOCTYPE html>
<html>
    <head>
        <title>Topic Show</title>
    </head>
    <body>
        <div>
            <g:link controller="topicShow" action="subTopic">Subscribed Topics</g:link>
            <g:link controller="topicShow" action="unsubTopic">Unsubscribed Topics</g:link>
        </div>
        <div>
            <ul>
                <g:each var="c" in="${subscriptions}">
                    <li>
                        <label>Topic name : </label>
                        <g:field name="topic" type="text" value="${c.topic.name}" readonly="readonly"/>
                        <g:if test="${c.accessGrant}">Subscribed
                            <div class="showResource">
                                <g:formRemote url = "[controller : 'Resource', action : 'showResource']" name="showResource">
                                    <g:hiddenField name="topic" type="text" value="${c.topic.name}" readonly="readonly"/>
                                    <g:submitButton name="Open"/>
                                </g:formRemote>
                            </div>
                        </g:if>
                        <g:else>Subscription pending</g:else>
                    </li>
                </g:each>
            </ul>
        </div>
    </body>
</html>