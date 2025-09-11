<#-- Определяем макросы форм -->
<#macro loginForm>
<form id="kc-form-login" action="${url.loginAction!''}" method="post" class="login-form">
        <input type="text" name="username" placeholder="Логин" value="${login.username!''}" required autocomplete="off"/>
        <input type="password" name="password" placeholder="Пароль" required autocomplete="off"/>
        <button type="submit" class="btn-login">Войти</button>
    </form>
    <div class="register-text">
        <a href="${url.loginResetCredentialsUrl!''}" class="btn-forgot">Забыли пароль</a> |
        <a href="${url.registrationUrl!''}" class="btn-register">Зарегистрироваться</a>
    </div>
</#macro>

<#macro registerForm>
    <form id="kc-form-register" action="${url.registrationAction!''}" method="post" class="register-form">
        <input type="text" name="username" placeholder="Логин" required autocomplete="off"/>
        <input type="email" name="email" placeholder="Email" required autocomplete="off"/>
        <input type="password" name="password" placeholder="Пароль" required autocomplete="off"/>
        <button type="submit" class="btn-register">Зарегистрироваться</button>
    </form>
</#macro>

<#macro logoutForm>
    <form id="kc-form-logout" action="${url.logoutAction!''}" method="post">
        <button type="submit" class="btn-logout">Выйти</button>
    </form>
</#macro>

<#-- Основной макрос страницы -->
<#macro registrationLayout bodyClass="" displayMessage=true section="form">
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Кантата</title>
    <link rel="icon" type="image/png" href="${url.resourcesPath}/img/logoCantata.png"/>
    <link href="${url.resourcesPath}/css/styles.css" rel="stylesheet" />
</head>
<body class="${bodyClass}">

<#if displayMessage && message?has_content>
    <div class="kc-feedback-area">${message.summary?no_esc}</div>
</#if>

<div class="page-container">
    <div class="page-card">
        <div class="page-header">
            <img src="${url.resourcesPath}/img/Title-home.png" alt="Title" class="title-image"/>
            <h1 class="text-styled">
                <#if bodyClass == "login">Добро пожаловать в Кантата</#if>
                <#if bodyClass == "register">Регистрация (Кантата)</#if>
                <#if bodyClass == "logout">Выход</#if>
            </h1>
        </div>

        <div class="side">
            <#-- Выбираем, какую форму рендерить -->
            <#if section == "login">
                <@loginForm/>
            <#elseif section == "register">
                <@registerForm/>
            <#elseif section == "logout">
                <@logoutForm/>
            </#if>
        </div>
    </div>
</div>

</body>
</html>
</#macro>