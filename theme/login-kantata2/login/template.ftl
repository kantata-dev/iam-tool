<#macro registrationLayout bodyClass="">
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Кантата</title>
    <link rel="icon" type="image/png" href="${url.resourcesPath}/img/logoCantata.png"/>
    <link href="${url.resourcesPath}/css/styles.css" rel="stylesheet" />
</head>
<body>
    <#if message?has_content>
        <div class="kc-feedback-area">${message.summary?no_esc}</div>
    </#if>
    <#nested "form"/>
</body>
</html>
</#macro>
<#macro head></#macro>
<#macro form></#macro>