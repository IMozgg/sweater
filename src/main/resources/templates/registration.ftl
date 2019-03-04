<#import "parts/common.ftl" as c>
<#import  "parts/login.ftl" as f>

<@c.page>
    <div><h3>Страница логина</h3></div>
    <div>
        Add new User
        ${message}
        <@f.login "/registration" />
    </div>
</@c.page>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>login</title>
</head>
<body>
    <div>
        Add new User
        {{#message}}
            {{message}}
        {{/message}}
        <form action="/registration" method="post">
            <div><label>User Name: <input type="text" name="username" /></label></div>
            <div><label>User Password: <input type="text" name="password"/></label></div>
            <input type="hidden" name="_csrf" value="{{_csrf.token}}"/>
            <div><input type="submit" value="Логин"></div>
        </form>
    </div>
</body>
</html>