<#macro login path>
    <form action="${path}" method="post">
        <div><label>User Name: <input type="text" name="username" /></label></div>
        <div><label>User Password: <input type="text" name="password"/></label></div>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <div><input type="submit" value="Логин"></div>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <input type="submit" value="Выход">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    </form>
</#macro>