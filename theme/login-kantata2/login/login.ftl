<#import "registrationLayout.ftl" as layout>
<@layout.registrationLayout bodyClass="login" displayMessage=true>
    <@layout.form>
    <div class="page-container">
        <div class="page-card">
            <div class="page-header">
                <img src="${url.resourcesPath}/img/Title-home.png" alt="Title" class="title-image"/>
                <h1 class="text-styled">Добро пожаловать в Кантата</h1>
            </div>

            <#if realm.password>
            <div class="side">
                <form id="kc-form-login" name="login" action="${url.loginAction}" method="post" class="login-form">
                    <input type="text" id="username" name="username" placeholder="Логин" value="${login.username!''}" required autocomplete="off"/>
                    <input type="password" id="password-login" name="password" placeholder="Пароль" required autocomplete="off"/>
                    <button type="submit" class="btn-login">Войти</button>
                </form>

                <div class="register-text">
                    <a href="${url.loginResetCredentialsUrl}" class="btn-forgot">Забыли пароль</a>
                    <br/>
                    Нет аккаунта?
                    <a href="${url.registrationUrl}" class="btn-register">Зарегистрироваться</a>
                </div>
            </div>
            </#if>

        </div>
    </div>
    </@layout.form>
</@layout.registrationLayout>