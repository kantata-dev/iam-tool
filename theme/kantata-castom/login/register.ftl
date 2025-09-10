<#import "template.ftl" as layout>
<@layout.registrationLayout>
 <@layout.head>
        <link rel="icon" type="image/svg+xml" href="${url.resourcesPath}/img/logoCantata.png" />
    </@layout.head>

<div class="page-container">
  <div class="page-card">

    <div class="page-header">
      <img
        src="${url.resourcesPath}/img/Title-home.png"
        alt="Title"
        class="title-image"
      />
      <h1 class="text-styled">Регистрация (Кантата)</h1>
    </div>

    <div class="side">
      <form id="kc-register-form" class="login-form" action="${url.registrationAction}" method="post">

     <input
         type="email"
         id="email"
         name="email"
         value="${(register.formData.email!'')}"
         placeholder="Электронная почта"
         required
       >
       <input
         type="password"
         id="password"
         name="password"
         placeholder="Пароль"
         required
       >

       <input
         type="password"
         id="password-confirm"
         name="password-confirm"
         placeholder="Подтвердите пароль"
         required
       >
        <button type="submit" class="btn-login">${msg("doRegister")}</button>
      </form>

      <p class="register-text">
        ${msg("doAlreadyHaveAccount")}
        <a href="${url.loginUrl}" class="btn-register">${msg("doLogIn")}</a>
      </p>
    </div>

  </div>
</div>

</@layout.registrationLayout>