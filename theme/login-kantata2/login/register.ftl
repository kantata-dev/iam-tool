<#import "registrationLayout.ftl" as layout>
<@layout.registrationLayout bodyClass="register" displayMessage=true>
    <div class="page-container">
        <div class="page-card">
            <div class="page-header">
                <img src="${url.resourcesPath}/img/Title-home.png" alt="Title" class="title-image"/>
                <h1 class="text-styled">Регистрация (Кантата)</h1>
            </div>

            <div class="side">
                <form id="kc-register-form" class="login-form" action="${url.registrationAction}" method="post">
                    <input type="email" id="email-register" name="email" value="${register.formData.email!''}" placeholder="Электронная почта" required/>
                    <input type="password" id="password-register" name="password" placeholder="Пароль" required/>
                    <input type="password" id="password-confirm-register" name="password-confirm" placeholder="Подтвердите пароль" required/>
                    <button type="submit" class="btn-login">Зарегистрироваться</button>
                </form>

                <p class="register-text">
                    Уже есть аккаунт?
                    <a href="${url.loginUrl}" class="btn-register">Войти</a>
                </p>
            </div>

        </div>
    </div>
</@layout.registrationLayout>