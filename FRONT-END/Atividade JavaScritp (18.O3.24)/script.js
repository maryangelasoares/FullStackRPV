function aumentarFonte(){
    let paragrafo = document.getElementById("texto");
    let tamanhoAtual = window.getComputedStyle(paragrafo, null).getPropertyValue('font-size');
    let novoTamanho = parseInt(tamanhoAtual) + 2;
    paragrafo.style.fontSize = novoTamanho + "px";
}
function diminuirFonte(){
    let paragrafo = document.getElementById("texto");
    let tamanhoAtual = window.getComputedStyle(paragrafo, null).getPropertyValue('font-size');
    let novoTamanho = parseInt(tamanhoAtual) - 2;
    paragrafo.style.fontSize = novoTamanho + "px";
}
function alterarCor(){
    let cores = document.getElementById('texto');
     cores = ['red', 'blue', 'green', 'yellow', 'black'];
    let corAleatoria = cores[Math.floor(Math.random() * cores.length)];
    document.body.style.color = corAleatoria;
}
function inserirTexto(){
    let texto = document.getElementById('texto');
    let novoTexto = prompt('Digite o novo texto');
    texto.innerHTML = novoTexto;
}