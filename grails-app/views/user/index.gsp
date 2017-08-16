<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <title>UserSignUp</title>
</head>
<body>
<h3>Fill in the details</h3>
<div class="updateUserForm" id="user" >
    <g:formRemote url = "[controller : 'User', action : 'updateUser']" update="user" name="updateUserForm">
        <label>First Name</label>
        <g:textField name="firstName" value=""/>
        <br/>
        <label>Last Name</label>
        <g:textField name="lastName" value=""/>
        <br/>
        <label>Email</label>
        <g:textField name="email" value=""/>
        <br/>
        <label>Username</label>
        <g:textField name="username" value=""/>
        <br/>
        <label>Password</label>
        <g:passwordField name="password" value=""/>
        <br/>
        <g:submitButton name="Save"/>
    </g:formRemote>
</div>
</body>
</html>