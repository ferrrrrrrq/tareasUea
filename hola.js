window.onload = function() {
    const mensaje = document.createElement("div");
    mensaje.id = "bienvenida";
    mensaje.innerHTML = "Bienvenido a mi Portafolio soy Fernando Delgado y espero te guste :)";
    document.body.appendChild(mensaje);

    setTimeout(function() {
        mensaje.remove();
    }, 3000);
}