
    <div class="updateUserForm container" id="signUp">
        <g:formRemote url = "[controller : 'User', action : 'updateUser']" update="signUp" name="updateUserForm" role="form">
            <div class="fheader">
                <h3>Sign Up</h3>
            </div>
            <div class="form-group">
                <label>First Name</label>
                <g:textField name="firstName" value="" class="form-control"/>
            </div>
            <div class="form-group">
                <label>Last Name</label>
                <g:textField name="lastName" value="" class="form-control"/>
            </div>
            <div class="form-group">
                <label>Email Id</label>
                <g:textField name="email" value="" class="form-control"/>
            </div>
            <div class="form-group">
                <label>Username</label>
                <g:textField name="username" value="" class="form-control"/>
            </div>
            <div class="form-group">
                <label>Password</label>
                <g:passwordField name="password" value="" class="form-control"/>
            </div>
            <g:submitButton name="Save"/>
        </g:formRemote>
        <br>
    </div>
