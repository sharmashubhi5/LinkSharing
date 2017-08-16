<!DOCTYPE html>
<html>
    <head>
        <title>Resources</title>
    </head>
    <body>
        <h3>${topic.name}</h3>
        <ul>
            <g:each var="r" in="${resources}">
                <li>
                    <h4>${r.createdBy.username}</h4>
                    <p>${r.message}</p>
                </li>
            </g:each>
        </ul>
    </body>
</html>