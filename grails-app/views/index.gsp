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
            .forms{
                padding-top: 50px;
            }
            .formBox{
                background-color:rgba(157,157,157,0.5);
                border:1px solid #262626;
                border-radius:3%;
            }
            #footer{
                background-color: #2e3741;
                height:10px;
            }
        </style>
    </head>
    <body id="homepage">
        <div class="navbar navbar-default navbar-static-top" id="navbar" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <div class="navbar-brand" id="header">
                        <h3>Link Sharing</h3>
                    </div>
                </div>
                <div class="navbar-form navbar-right" id="search">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search">
                        <span class="input-group-btn">
                            <button class="btn btn-info" type="button"><i class="fa fa-search"></i></button>
                        </span>
                    </div>
                </div>
            </div>
        </div>
        <div class="forms">
            <div class="row">
                <div class="col-md-6 formBox">
                    <div class="signup">
                        <g:render template="user/signup"/>
                    </div>
                </div>
                <div class="col-md-5 col-md-offset-1 formBox">
                    <div class="login">
                        <g:render template="login/login"/>
                        %{--<g:link controller="login" defaultTargetUrl="home">Login</g:link>--}%
                    </div>
                </div>
            </div>
        </div>
        <div class="footer" id="footer" role="contentinfo"></div>
    </body>
</html>