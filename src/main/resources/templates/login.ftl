<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as f>

<@c.page>
    <div><h3>Страница логина</h3></div>
    <@f.login "/login" />
    <a href="/registration">Регистрация</a>
</@c.page>