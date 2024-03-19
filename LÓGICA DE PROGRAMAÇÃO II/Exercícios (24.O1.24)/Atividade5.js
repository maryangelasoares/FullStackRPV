/*  Faça um programa que entre com o nome e o salário de um funcionário e mostre seu novo salário, sabendo que o mesmo teve 
um aumento de 10%. */

const prompt = require ('prompt-sync')();

do{
//Declaração de variáveis.
let nome = prompt('Digite o nome do funcionário: ');
let salario = parseFloat(prompt('Digite o salário do funcionário: ')); 
//parseFloat() converte a string recebida em um número de ponto flutuante.

//Calcula o novo salário.
let novoSalario = (salario * 0.10) + salario;
console.log(`O novo salário do funcionário ${nome} é ${novoSalario.toFixed(2)}`);

const repet = prompt("Deseja realizar um nova consultar ? (S/N): ");

if (repet !== "S") {
    break;
}

} while (true);
