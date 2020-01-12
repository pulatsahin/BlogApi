# BlogApi
Blog Api with .Net Core 3.1 

WebApi Blog Project with .Net Core 3.1

Çalıştırılması için yapılması gerekenler;

1-BlogApi.sql çalıştırılmalıdır.

2-appsettings.json dosyasındaki DefaultConnection database değiştirilmeli.

3-  .../users/authenticate linki üzerinden aşağıdaki örnek bilgiler ile giriş yapılır.

{
    "username": "Watmore",
    "password": "Passw0rd44"
}

4-  .../users/register linki üzerinden aşağıdaki örnek bilgiler ile user oluşturulabilir.

{
    "firstName": "Jason",
    "lastName": "Watmore",
    "username": "jason",
    "password": "my-super-secret-password"
}

5- .../articles ile kayıtlı bloglar listelenir.Öncesinde token alınmalıdır.


Teşekkürler