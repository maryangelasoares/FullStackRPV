/*Faça um programa que verifique, se o sexo de uma pessoa é “F” ou “M”.*/

const prompt = require('prompt-sync')();

do {    
//Solicita o nome.
let nome = prompt("Qual seu nome? "); ("\n");
//Solicita o nome da pessoa.
let sexo = "";
while (sexo !== "F" && sexo !== "M") {
    sexo = prompt(`Digite "F" para Feminino ou "M" para Masculino: `);

    if (sexo !== "F" && sexo !== "M") {
        console.log("Entrada inválida. Por favor, digite 'F' para Feminino ou 'M' para Masculino.");
    }
}

//Verifica o sexo.
if (sexo === "F") {
    console.log("SEXO Feminino.");
} else if (sexo === "M") {
    console.log("SEXO Masculino.");
}

const repetir = prompt("Deseja digitar novamente? (S/N): ").toUpperCase();

if (repetir !== "S") {
    break;
}

} while (true);