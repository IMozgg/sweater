<#import "parts/common.ftl" as c>

<@c.page>
    <!-- Форма фильтрации -->
    <div class="form-row">
        <div class="form-group col-md-6">
            <form class="form-inline" method="get" action="/main">
                <input text="text" name="filter" class="form-control" value="${filter?ifExists}" placeholder="поиск по тэгу..." />
                <button type="submit" class="btn btn-primary ml-2">Найти</button>
            </form>
        </div>
    </div>

    <!-- Форма отправки сообщений -->
    <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
        Новое сообщение
    </a>
    <div class="collapse" id="collapseExample">
        <div class="form-group mt-3">
            <form method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <input type="text" name="text" class="form-control" placeholder="Сообщение" />
                </div>
                <div class="form-group">
                    <input text="text" name="tag" class="form-control" placeholder="Тэг" />
                </div>
                <div class="form-group">
                    <div class="custom-file">
                        <input type="file" name="file" id="customFile">
                        <label class="custom-file-label" for="customFile">Выбрать файл</label>
                    </div>
                </div>
                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                <div class="form-group">
                    <button type="submit" name="sendMessage" class="btn btn-primary">Добавить</button>
                </div>
            </form>
        </div>
    </div>

    <!-- Вывод сообщений -->
    <div class="card-columns">
        <#list  messages as message>
            <div class="card my-3">
                <#if message.filename??>
                    <img src="/img/${message.filename}">
                </#if>
                <div class="m-2">
                    <span>${message.text}</span>
                    <i>${message.tag}</i>
                </div>
                <div class="card-footer text-muted">
                    ${message.authorName}
                </div>
            </div>
        <#else>
            No Message
        </#list>
    </div>
</@c.page>