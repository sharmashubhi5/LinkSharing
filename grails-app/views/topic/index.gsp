<!DOCTYPE html>
<html>
<head>
    <title>Add Topic</title>
</head>
<body>
    <label>Topic Name</label>
    <div class="updateTopicName" id="topic" >
        <g:formRemote url = "[controller : 'Topic', action : 'updateTopic']" update="topic" name="updateTopicName">
            <g:textArea name="name" value=""/>
            <br/>
            <g:select name="visibility" from="${vis}" value="${vis}" multiple="false"/>
            <br/>
            <g:submitButton name="Save"/>
        </g:formRemote>
</div>
</body>
</html>