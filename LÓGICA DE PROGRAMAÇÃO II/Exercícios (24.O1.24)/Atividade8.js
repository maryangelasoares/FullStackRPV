/* Faça um algoritmo que leia o nome e as três notas de uma disciplina de um aluno e ao final escreva o nome do aluno, sua média e se ele foi aprovado, sabendo-se que a média para aprovação 
é igual ou superior a 8. */

const prompt = require ('prompt-sync')();

do {
//Declaração de variáveis.
let nomeAluno, nomeMateria, nota1, nota2, nota3, media;

//Recebe os dados do aluno.
nomeAluno = prompt("Digite o nome do aluno: "); 
nomeMateria = prompt("Digite o nome da matéria: "); 

//Recebe as notas do aluno.
nota1 = parseFloat(prompt("Digite a primeira nota: "));
nota2 = parseFloat(prompt("Digite a primeira nota: "));
nota3 = parseFloat(prompt("Digite a primeira nota: "));

//Calcula a média.
media = (nota1+nota2+nota3)/3;

//Verifica se o aluno foi aprovado.
if (media >= 8){
    console.log (`O(A) Aluno ${nomeAluno} está APROVADO(A) na disciplina de ${nomeMateria}, pois sua média foi: ${media.toFixed(2)}. `);
} else {
    console.log (`O(A) Aluno ${nomeAluno} está REPROVADO(A) na disciplina de ${nomeMateria}, pois sua média foi: ${media.toFixed(2)}. `);
}

const repetir = prompt("Deseja realizar uma nova consulta? (S/N): ").toUpperCase();

if (repetir !== "S") {
    break;
}

} while (true);
