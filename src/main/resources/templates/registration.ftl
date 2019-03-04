<#import "parts/common.ftl" as c>
<#import  "parts/login.ftl" as f>

<@c.page>
    <div>
        <div><h3>Регистрация пользователя</h3></div>

        ${message?ifExists}
        <@f.login "/registration" />
    </div>
</@c.page>