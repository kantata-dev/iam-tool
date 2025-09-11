#macro registrationLayout bodyClass="" displayMessage=true displayRequiredFields=false displayInfo=false>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Кантата</title>
    <link rel="icon" type="image/png" href="${url.resourcesPath}/img/logoCantata.png"/>
    <link href="${url.resourcesPath}/css/styles.css" rel="stylesheet" />
</head>
<body class="${bodyClass}">

<#if displayMessage && message?has_content && (message.type != 'warning' || !isAppInitiatedAction??)>
    <div class="kc-feedback-area">${message.summary}</div>
</#if>

<div class="page-container">
    <div class="page-card">
        <div class="page-header">
            <img src="${url.resourcesPath}/img/Title-home.png" alt="Title" class="title-image"/>
            <h1 class="text-styled">
                <#if bodyClass == "login">Добро пожаловать в Кантата</#if>
                <#if bodyClass == "register">Регистрация (Кантата)</#if>
            </h1>
        </div>

        <div class="side">
            <#-- Секция header -->
            <#if nested??><#nested "header"></#if>

            <#-- Секция form -->
            <#nested "form">

            <#-- Секция info -->
            <#if nested??><#nested "info"></#if>

            <#-- Секция socialProviders -->
            <#if nested??><#nested "socialProviders"></#if>
        </div>
    </div>
</div>

</body>
</html>
</#macro>