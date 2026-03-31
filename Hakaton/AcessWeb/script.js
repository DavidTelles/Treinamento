// 🔊 Texto para voz
function lerTexto() {
    const texto = document.getElementById("texto").value;
    const fala = new SpeechSynthesisUtterance(texto);
    speechSynthesis.speak(fala);
}

// 🎤 Voz para texto
function iniciarReconhecimento() {
    const reconhecimento = new (window.SpeechRecognition || window.webkitSpeechRecognition)();
    reconhecimento.lang = "pt-BR";

    reconhecimento.onresult = function(event) {
        const texto = event.results[0][0].transcript;
        document.getElementById("saida").innerText = texto;
    };

    reconhecimento.start();
}

// 🎨 Modo acessível
function modoAcessivel() {
    document.body.classList.toggle("acessivel");
}

// 🧠 Simplificador (simples)
function simplificarTexto() {
    let texto = document.getElementById("texto").value;

    texto = texto
    .replace("utilizar", "usar")
    .replace("otimizar", "melhorar")
    .replace("necessário", "preciso");

    document.getElementById("saida").innerText = texto;
}