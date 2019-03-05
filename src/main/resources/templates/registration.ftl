<#import "parts/common.ftl" as c>
<#import  "parts/login.ftl" as f>

<@c.page>
    <div class="mb-1">
        <h5>Регистрация</h5>
    </div>
    ${message?ifExists}
    <@f.login "/registation" true/>
</@c.page>