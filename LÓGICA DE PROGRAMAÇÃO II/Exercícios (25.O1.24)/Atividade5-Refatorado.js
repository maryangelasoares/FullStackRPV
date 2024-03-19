const prompt = require('prompt-sync')();

// Recebe o número do mês
let mes;

//Converte a string recebida em número
mes = parseInt(prompt("Qual o número do mês? "));
console.log ("\n");

// Array com os nomes dos meses
const meses = [
    "Janeiro",
    "Fevereiro",
    "Março",
    "Abril",
    "Maio",
    "Junho",
    "Julho",
    "Agosto",
    "Setembro",
    "Outubro",
    "Novembro",
    "Dezembro"
];

// Verifica se o número do mês é válido e imprime o mês correspondente
if (mes >= 1 && mes <= 12) {
    console.log(`O mês é,  ${meses[mes - 1]}`);
} else {
    console.log("Opção inválida.");
}