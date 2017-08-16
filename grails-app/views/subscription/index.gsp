<!DOCTYPE html>
<html>
<head>
    <title>Subcribe</title>
</head>
<body>
<label>Topic Name</label>
<div class="updateSub" id="sub" >
    <g:formRemote url = "[controller : 'Subscription', action : 'updateSubscription']" update="sub" name="updateSub">
        <g:textArea name="topic" value=""/>
        <br/>
        <g:submitButton name="Subscribe"/>
    </g:formRemote>
</div>
</body>
</html>