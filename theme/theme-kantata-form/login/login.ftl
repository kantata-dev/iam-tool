<#import "template.ftl" as layout>

<@layout.registrationLayout bodyClass="login">
    <#nested "form">
        <form id="kc-form-login" action="${url.loginAction!''}" method="post" class="login-form">
            <div class="form-group">
                <input type="text" id="username" name="username" value="${login.username!''}" placeholder="Логин" required />
            </div>

            <div class="form-group">
                <input type="password" id="password" name="password" placeholder="Пароль" required />
            </div>

            <div class="form-actions">
                <button type="submit" class="btn-login">Войти</button>
            </div>

            <div class="form-links">
                <a href="${url.registrationUrl}">Регистрация</a>
                <a href="${url.loginResetCredentialsUrl}">Забыли пароль?</a>
            </div>
        </form>
    </#nested>
</@layout.registrationLayout>>