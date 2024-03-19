/* Faça um programa que entre com três números, faça a média aritmética e mostre o resultado.*/

const prompt = require ('prompt-sync')();

do {

//Declaração de variáveis.
let num1, num2, num3, media;

//Recebe os números.
num1 = parseFloat(prompt('Digite o primeiro número:'));
num2 = parseFloat(prompt('Digite o segundo número:'));
num3 = parseFloat(prompt('Digite o terceiro número:'));

//Calcula a média.
media = (num1 + num2 + num3)/3;
console.log(`A média aritmética é: ${media.toFixed(2)}.`);

const repetir = prompt("Deseja digitar novamente? (S/N): ").toUpperCase();

if (repetir !== "S") {
    break;
}

} while (true);