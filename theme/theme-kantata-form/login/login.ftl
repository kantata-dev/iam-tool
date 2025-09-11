<#import "template.ftl" as layout>

<@layout.registrationLayout bodyClass="login" displayMessage=!messagesPerField.existsError('username','password')>
    <#if realm.internationalizationEnabled>
        <#assign lang = locale.currentLanguageTag>
    </#if>

    <#if section = "form">
        <form id="kc-form-login" action="${url.loginAction}" method="post">
            <div class="form-group">
                <input type="text" id="username" name="username"
                       placeholder="Логин" value="${(login.username!'')}"
                       autocomplete="off" autofocus />
            </div>

            <div class="form-group">
                <input type="password" id="password" name="password"
                       placeholder="Пароль" autocomplete="off" />
            </div>

            <div class="form-group">
                <button type="submit" class="btn-login">Войти</button>
            </div>
        </form>

        <div class="register-text">
            <#if realm.resetPasswordAllowed>
                <a href="${url.loginResetCredentialsUrl}" class="btn-forgot">Забыли пароль</a> |
            </#if>
            <#if realm.registrationAllowed>
                <a href="${url.registrationUrl}" class="btn-register">Зарегистрироваться</a>
            </#if>
        </div>
    </#if>
</@layout.registrationLayout>