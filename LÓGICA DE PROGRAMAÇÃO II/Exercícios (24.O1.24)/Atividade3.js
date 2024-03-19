/* Escreva um programa que pergunte ao usuário sua idade e imprima se ele é maior ou menor de idade. */

const prompt = require ('prompt-sync')();

// Recebe a idade do usuário
let idade = prompt ("Quantos anos você tem? ");
idade = Number(idade); // Converte a string recebida em número

// Verifica se o usuário é maior ou menor de idade
if (idade >= 18) {
    console.log ("Você é maior de idade.\n");
} else {
    console.log ("Você é menor de idade.\n");
}