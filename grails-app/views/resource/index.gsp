<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <title>Resource</title>
    </head>
    <body>
    <h3>Add any resource</h3>
        <div class="updateResourceForm" id = "messages">
            <g:formRemote url = "[controller : 'Resource', action : 'updateResource']" update="messages" name="updateResourceForm">
                <g:select name="topic" from="${topics}" value="${topics}" multiple="false"/>
                <g:textArea name="message" value=""/>
                <br/>
                <g:submitButton name="Save"/>
            </g:formRemote>
        </div>
    </body>
</html>