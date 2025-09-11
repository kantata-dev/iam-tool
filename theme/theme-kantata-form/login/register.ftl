<#import "template.ftl" as layout>

<@layout.registrationLayout bodyClass="register">
    <#if section == "form">
        <form id="kc-form-register" action="${url.registrationAction!''}" method="post" class="register-form">
            <input type="text" name="username" placeholder="Логин" required autocomplete="off"/>
            <input type="email" name="email" placeholder="Email" required autocomplete="off"/>
            <input type="password" name="password" placeholder="Пароль" required autocomplete="off"/>
            <button type="submit" class="btn-register">Зарегистрироваться</button>
        </form>
    </#if>
</@layout.registrationLayout>