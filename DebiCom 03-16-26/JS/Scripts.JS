/*Mostrar contraseña y Cambar el Icono del ojito en el formulario login*/
function mostrar() 
{
    const input = document.getElementById("pass");
    input.type = input.type === "password" ? "text" : "password";
    const icon = document.getElementById("icon");
    icon.classList.toggle("fa-eye")
    icon.classList.toggle("fa-eye-slash")
}

/*Mostrar contraseña y cambiar el icono del ojito en el formilario de register campo contraseña*/
function mostrar_contra()
{
    const input = document.getElementById("passw");
    input.type = input.type === "password" ? "text" : "password";
    const icon = document.getElementById("icon");
    icon.classList.toggle("fa-eye")
    icon.classList.toggle("fa-eye-slash")
}
        
/*Mostrar contraseña y cambiar el icono del ojito en el formilario de register campo confirmar contraseña*/
function mostrar_confirmar() 
{
    const input = document.getElementById("ConfirmPassword");
    input.type = input.type === "password" ? "text" : "password";
    const iconC = document.getElementById("iconC");
    iconC.classList.toggle("fa-eye")
    iconC.classList.toggle("fa-eye-slash")
}