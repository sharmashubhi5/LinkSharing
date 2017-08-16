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
    #footer{
        background-color: #2e3741;
        height: 10px;
    }
    .logout{
        text-decoration: none;
    }
    </style>
</head>
<body>

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

    <g:layoutBody/>
    <div class="container" id="logout">
        <g:remoteLink class="logout btn btn-primary" controller="logout" method="post" asynchronous="false" onSuccess="location.reload()">Logout</g:remoteLink>
    </div>
    <div class="footer" id="footer" role="contentinfo"></div>

    <div id="spinner" class="spinner" style="display:none;">
        <g:message code="spinner.alt" default="Loading&hellip;"/>
    </div>

    <asset:javascript src="application.js"/>

</body>
</html>
