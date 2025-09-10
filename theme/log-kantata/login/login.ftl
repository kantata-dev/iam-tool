<#import "template.ftl" as layout>
<@layout.registrationLayout>

<@layout.headBlock>
    <link rel="icon" type="image/svg+xml" href="${url.resourcesPath}/img/logoCantata.png" />
</@layout.headBlock>

<@layout.contentBlock>
    <div class="page-container">
        <div class="page-card">

            <div class="page-header">
                <img src="${url.resourcesPath}/img/Title-home.png" alt="Title" class="title-image" />
                <h1 class="text-styled">Добро пожаловать в Кантата</h1>
            </div>

            <#if realm.password>
                <div class="side">
                    <form id="kc-form-login" name="login" action="${url.loginAction!''}" method="post" class="login-form">
                        <input type="text" id="username" name="username" placeholder="Логин" value="${login.username!''}" required autocomplete="off">
                        <input type="password" id="password" name="password" placeholder="Пароль" required autocomplete="off">
                        <button type="submit" class="btn-login">Войти</button>
                    </form>

                    <div class="register-text">
                        <a href="${url.loginResetCredentialsUrl!''}" class="btn-forgot">Забыли пароль</a>
                        <br/>
                        Нет аккаунта?
                        <a href="${url.registrationUrl!''}" class="btn-register">Зарегистрироваться</a>
                    </div>
                </div>
            </#if>

        </div>
    </div>
</@layout.contentBlock>

</@layout.registrationLayout>