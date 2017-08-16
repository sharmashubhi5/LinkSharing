<!DOCTYPE html>
<html>
    <head>
        <title>Subscription Requests</title>
    </head>
    <body>
        <h2>Subscription requests</h2>
        <ul>
            <g:each var="c" in="${requests}">
                <li class="updateAccess" id="grant">
                    <g:formRemote url = "[controller : 'TopicList', action : 'subscribe']" update="grant" name="updateAccess">
                        <g:field type="text" name="topic" value="${c.topic.id}" readonly="readonly"/>
                        <g:field type="text" name="user" value="${c.user.id}" readonly="readonly"/>
                        <br/>
                        <g:submitButton name="GrantAccess"/>
                    </g:formRemote>
                </li>
            </g:each>
        </ul>
    </body>
</html>