<#import "parts/common.ftl" as c>
<#import  "parts/login.ftl" as f>

<@c.page>

    <!-- Форма логаута -->
    <div>
        <@f.logout />
        <span><a href="/user">Список пользователей</a></span>
    </div>

    <!-- Форма отправки сообщений -->
    <div>
        <form method="post">
            <input type="text" name="inText" placeholder="Сообщение" />
            <input text="text" name="inTag" placeholder="Тэг" />
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <button type="submit" name="sendMessage">Добавить</button>
        </form>
    </div>

    <!-- Форма фильтрации -->
    <div>
        <form method="get" action="/main">
            <input text="text" name="filter" value="${filter}" placeholder="поиск по тэгу..." />
            <button type="submit">Найти</button>
        </form>
    </div>

    <!-- Вывод сообщений -->
    <div>Список сообщений: </div>
        <p><#list  messages as message>
            <div>
                <ul>
                    <li>${message.id}: ${message.text} ${message.tag} ${message.authorName}</li>
                </ul>
            </div>
            <#else>
            No Message
        </#list></p>
</@c.page>