<#import "parts/common.ftl" as c>

<@c.page>
    <div>Список пользователей</div>
    <table>
        <thead>
            <tr>
                <th>Имя</th>
                <th>Роль</th>
                <th></th>
            </tr>
        </thead>

        <tbody>
            <#list users as user>
                <tr>
                    <td>${user.username}</td>
                    <td><#list user.roles as role>${role}<#sep>, </#list></td>
                    <td><a href="/user/${user.id}">редактировать</a></td>
                </tr>
            </#list>
        </tbody>
    </table>
</@c.page>