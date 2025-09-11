<#import "template.ftl" as layout>

<@layout.registrationLayout bodyClass="register">
    <#nested "form">
        <form id="kc-form-register" action="${url.registrationAction!''}" method="post" class="register-form">
            <div class="form-group">
                <input type="text" id="username" name="username" placeholder="Логин" required />
            </div>

            <div class="form-group">
                <input type="email" id="email" name="email" placeholder="Email" required />
            </div>

            <div class="form-group">
                <input type="password" id="password" name="password" placeholder="Пароль" required />
            </div>

            <div class="form-actions">
                <button type="submit" class="btn-register">Зарегистрироваться</button>
            </div>

            <div class="form-links">
                <a href="${url.loginUrl}">Уже есть аккаунт? Войти</a>
            </div>
        </form>
    </#nested>
</@layout.registrationLayout>