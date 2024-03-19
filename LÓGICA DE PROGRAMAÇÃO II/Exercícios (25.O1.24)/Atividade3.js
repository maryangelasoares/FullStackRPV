/* Faça um programa que calcule o “peso ideal” de um usuário de acordo com um caractere  identificador de sexo (“M” para Masculino ou “F” para Feminino) inserido pelo mesmo. 
A  fórmula para cada um dos dois casos está definida abaixo. Obs: O sistema deve permitir a  entrada do peso do usuário. Ao final informe a opção escolhida e informe o peso ideal 
(segundo  a fórmula) para usuário. Caso “M”, utilize a fórmula: Caso “F”, utilize a fórmula: imc */

const prompt = require('prompt-sync')();

//Declaração de variáveis.
let sexo, peso, altura, pesoIdeal;

//Recebe os dados.
console.log("Por favor, informe os dados para o cálculo. \n");

//Recebe o peso e a altura.
peso = parseFloat(prompt("Qual o seu peso? "));
altura = parseFloat(prompt("Qual a sua altura? "));
console.log ("\n");

console.log("Por favor, para o cálculo é necessário uma das opções abaixo: \n");
console.log("As opções disponiveis são: \n M - Masculino \n F - Feminino");
sexo = prompt("Qual o seu sexo? (M/F) ");

//Verifica o sexo.
switch (sexo) {
    case "M":
        pesoIdeal = (0.75 * altura) - 62.5;
        console.log("O seu peso ideal é, ", pesoIdeal.toFixed(2));
        break;

    case "F":
        pesoIdeal = (0.675 * altura) - 52.26;
        console.log("O seu peso ideal é, ", pesoIdeal.toFixed(2));
        break;

    default:
        console.log("Opção inválida.");
        break;
}