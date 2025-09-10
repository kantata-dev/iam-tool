<#import "template.ftl" as layout>
<@layout.registrationLayout>
    <div class="main-page">
        <h1>Регистрация</h1>

        <form action="${url.registrationAction}" method="post">
            <label>Логин:</label>
            <input type="text" name="username" required>

            <label>Email:</label>
            <input type="email" name="email">

            <label>Пароль:</label>
            <input type="password" name="password" required>

            <input type="submit" value="Зарегистрироваться">
        </form>

        <p>
            Уже есть аккаунт?
            <a href="${url.loginUrl}">Войти</a>
        </p>
    </div>
</@layout.registrationLayout>