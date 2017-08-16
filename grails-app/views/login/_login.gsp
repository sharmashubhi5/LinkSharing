<div id="login">
    <div class="inner">
        <div class="fheader"><h3><g:message code='springSecurity.login.header'/></h3></div>

        <g:if test='${flash.message}'>
            <div class="login_message">${flash.message}</div>
        </g:if>

        <form action="${postUrl ?: '/login/authenticate'}" method="POST" id="loginForm" class="cssform" autocomplete="off">
            <div class="form-group">
                <label for="username"><g:message code='springSecurity.login.username.label'/>:</label>
                <input type="text" class="text_ form-control" name="${usernameParameter ?: 'username'}" id="username"/>
            </div>

            <div class="form-group">
                <label for="password"><g:message code='springSecurity.login.password.label'/>:</label>
                <input type="password" class="text_ form-control" name="${passwordParameter ?: 'password'}" id="password"/>
            </div>

            <div class="form-group" id="remember_me_holder">
                <input type="checkbox" class="chk" name="${rememberMeParameter ?: 'remember-me'}" id="remember_me" <g:if test='${hasCookie}'>checked="checked"</g:if>/>
                <label for="remember_me"><g:message code='springSecurity.login.remember.me.label'/></label>
            </div>

            <p>
                <input type="submit" id="submit" value="${message(code: 'springSecurity.login.button')}"/>
            </p>
            <br>
        </form>
    </div>
</div>
<script>
    (function() {
        document.forms['loginForm'].elements['${usernameParameter ?: 'username'}'].focus();
    })();
</script>
