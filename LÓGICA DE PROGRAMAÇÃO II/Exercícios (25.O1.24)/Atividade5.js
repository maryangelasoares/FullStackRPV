/* Escreva um programa utilizando o comando switch que imprima um mês de acordo com o  número digitado pelo usuário.*/

const prompt = require('prompt-sync')();

// Recebe o número do mês
let mes;

//Converte a string recebida em número
mes = parseInt(prompt("Qual o número do mês? "));
console.log ("\n");

//Verifica o número do mês e imprime o mês correspondente
switch (mes) {
    case 1:
        console.log("O mês é Janeiro");
        break;

    case 2:
        console.log("O mês é Fevereiro");
        break;

    case 3:
        console.log("O mês é Março");
        break;

    case 4:
        console.log("O mês é Abril");
        break;

    case 5:
        console.log("O mês é Maio");
        break;

    case 6:
        console.log("O mês é Junho");
        break;

    case 7:
        console.log("O mês é Julho");
        break;

    case 8:
        console.log("O mês é Agosto");
        break;

    case 9:
        console.log("O mês é Setembro");
        break;

    case 10:
        console.log("O mês é Outubro");
        break;

    case 11:
        console.log("O mês é Novembro");
        break;

    case 12:
        console.log("O mês é Dezembro");
        break;

    default:
        console.log("Opção inválida.");
        break;
}