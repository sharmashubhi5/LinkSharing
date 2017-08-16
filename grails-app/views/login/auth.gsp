<!DOCTYPE html>
<html lang="en" class="no-js">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <title>LINK SHARING</title>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <asset:stylesheet src="application.css"/>
        <script src="https://use.fontawesome.com/05c07819e2.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Sedgwick+Ave+Display" rel="stylesheet">
        <style>
        #navbar{
            background-color: #2e3741;
            height: 100px;
        }
        #header{
            color: #31b0d5;
            font-family: 'Sedgwick Ave Display', cursive;
            font-size: 40px;
            padding-top:0px;
        }
        #search{
            padding-top: 20px;
        }
        #form{
            padding-top: 200px;
        }
        .formBox{
            background-color:rgba(157,157,157,0.5);
            border:1px solid #262626;
            border-radius:1%;
        }
        </style>
    </head>
    <body>
        <div class="navbar navbar-deafult navbar-fixed-top" id="navbar">
            <div class="container">
                <div class="navbar-brand" id="header">
                    <h3>Link Sharing</h3>
                </div>
                <div class="navbar-form navbar-right" id="search">
                    <div class="input-group">
                        <input class="form-control" placeholder="Search">
                        <span class="input-group-btn">
                            <button class="btn btn-info" type="button"><i class="fa fa-search"></i></button>
                        </span>
                    </div>
                </div>
            </div>
        </div>
        <div class="row" id="form">
            <div class="col-md-6 col-md-offset-3 formBox">
                <div id="login">
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
        </div>
        <script>
        (function() {
            document.forms['loginForm'].elements['${usernameParameter ?: 'username'}'].focus();
        })();

        </script>
    </body>
</html>