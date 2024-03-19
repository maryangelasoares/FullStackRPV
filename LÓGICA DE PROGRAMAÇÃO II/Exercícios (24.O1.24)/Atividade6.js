/* Faça um algoritmo que leia dois valores inteiros A e B. Se os valores forem iguais devem ser somados, 
caso contrário multiplique A por B e ao final do cálculo atribuir o valor para uma variável C. */

const prompt = require ('prompt-sync')();

//Declaração de variáveis.
let valorA = parseInt(prompt('Digite um valor: ')); //parseInt() converte a string recebida em um número inteiro.
let valorB = parseInt(prompt('Digite um valor: '));
let valorC; //Variável que receberá o resultado da multiplicação.

//Verifica se os valores são iguais.
if ( valorA === valorB) {
    console.log (`A soma destes valores é: ${valorA + valorB.toFixed(2)}.`);
} else {
   valorC = valorA * valorB;
    console.log (`A multiplicação destes valores é: ${valorC.toFixed(2)}`);
}