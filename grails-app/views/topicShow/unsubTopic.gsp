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
        <g:each var="c" in="${topics}">
            <li>
                <div class="unsubTopic">
                    <label>Topic name : </label>
                    <g:formRemote url = "[controller : 'Subscription', action : 'updateSubscription']" name="unsubTopic">
                        <g:field name="topic" type="text" value="${c.name}" readonly="readonly"/>
                        <g:submitButton name="Subscribe"/>
                    </g:formRemote>
                </div>
            </li>
        </g:each>
    </ul>
</div>
</body>
</html>