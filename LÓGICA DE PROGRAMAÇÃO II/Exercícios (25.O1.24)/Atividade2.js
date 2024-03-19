/* Desenvolva um programa que simule as 4 operações matemáticas básicas. Desenvolva uma calculadora utilizando a estrutura Switch, permita a entrada pelo usuário de 2  
operandos que participarão efetivamente da operação e escolha uma das 4 operações  disponíveis. (Soma  - Subtração  - Multiplicação  - Divisão). */

const prompt = require('prompt-sync')();

//Declaração de variáveis.
let num1, num2, operacao;

console.log("Bem vindo a calculadora");

//Recebe os números.
num1 = parseFloat(prompt("Qual o primeiro número? "));
num2 = parseFloat(prompt("Qual o segundo número? "));

//Recebe a operação desejada.
console.log("Por favor, informe os dados para a operação.");
console.log("As operações disponiveis são: +, -, *, /");

operacao = prompt("Qual operação você deseja? ");

//Verifica a operação desejada.
switch (operacao) {
    case "+":
        console.log("A soma dos números é " + (num1 + num2));
        break;

    case "-":
        console.log("A subtração dos números é " + (num1 - num2));
        break;

    case "*":
        console.log("A multiplicação dos números é " + (num1 * num2));
        break;

    case "/":
        console.log("A divisão dos números é " + (num1 / num2));
        break;

    default:
        console.log("Opção inválida.");
        break;
}   

