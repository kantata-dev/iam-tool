<#macro registrationLayout>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${pageTitle!'Кантата'}</title>
    <@block head></@block>
    <link rel="stylesheet" href="${url.resourcesPath}/css/style.css" />
</head>
<body>
    <@block content></@block>
</body>
</html>
</#macro>

<#macro block head></#macro>
<#macro block content></#macro>