<#import "template.ftl" as layout>
<@layout.registrationLayout bodyClass="register">
        <form id="kc-register-form" action="${url.registrationAction}" method="post" class="login-form">
            <input type="text" name="username" placeholder="Имя пользователя*" value="${register.formData.username!''}" required/>
            <input type="email" name="email" placeholder="Электронная почта" value="${register.formData.email!''}"/>
            <input type="password" name="password" placeholder="Пароль*" required/>
            <input type="password" name="password-confirm" placeholder="Подтвердите пароль*" required/>
            <button type="submit" class="btn-login">Зарегистрироваться</button>
        </form>
        <div class="register-text">
            Уже есть аккаунт?
            <a href="${url.loginUrl}" class="btn-register">Войти</a>
        </div>
</@layout.registrationLayout>