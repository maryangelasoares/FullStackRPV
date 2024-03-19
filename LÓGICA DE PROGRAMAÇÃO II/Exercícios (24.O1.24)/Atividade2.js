/* Crie um programa que solicite ao usuário dois números e exiba o resultado da  soma, subtração, multiplicação e 
divisão desses números. */

const prompt = require ('prompt-sync')();

//Declaração de variáveis.
let num1 = prompt("Digite um número:");
let num2 = prompt("Digite outro número:");

//Converte as strings recebidas em números.
num1 = Number(num1);
num2 = Number(num2);

//Imprime os resultados.
console.log(`A soma é: ${num1 + num2}`);
console.log(`A subtração é: ${num1 - num2}`);
console.log(`A multiplicação é: ${num1 * num2}`);
console.log(`A divisão é: ${num1 / num2}`);
