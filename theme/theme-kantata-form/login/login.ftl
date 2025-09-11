<#import "registrationLayout.ftl" as layout>

<@layout.registrationLayout bodyClass="login">
    <form id="kc-form-login" action="${url.loginAction!''}" method="post" class="login-form">
        <input type="text" name="username" placeholder="Логин" value="${login.username!''}" required autocomplete="off"/>
        <input type="password" name="password" placeholder="Пароль" required autocomplete="off"/>
        <button type="submit" class="btn-login">Войти</button>
    </form>

    <div class="register-text">
        <a href="${url.loginResetCredentialsUrl!''}" class="btn-forgot">Забыли пароль</a> |
        <a href="${url.registrationUrl!''}" class="btn-register">Зарегистрироваться</a>
    </div>
</@layout.registrationLayout>