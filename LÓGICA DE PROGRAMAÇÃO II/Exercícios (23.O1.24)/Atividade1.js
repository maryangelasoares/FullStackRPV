/* Faça um programa que utilize dois números e verifique e imprima o maior deles. */

const prompt = require('prompt-sync')();

// Recebe dois números do usuário
let numero1 = prompt("Digite o primeiro número: ");
let numero2 = prompt("Digite o segundo número: ");

// Verifica qual é o maior número
if (numero1 > numero2) {
    var maiorNumero = numero1;
} 
else {
    var maiorNumero = numero2;
}
// Imprime o resultado
console.log ("O maior número é: " + maiorNumero);