/* Faça um programa para a leitura de quatro notas parciais de um aluno.  
A mensagem “REPROVADO", se a média alcançada for entre 0 e 5;
A mensagem “RECUPERAÇÃO”, se a média alcançada for 6 e 7; 
A mensagem “SUPER APROVADO", se a média for igual a 10. */

const prompt = require('prompt-sync')();

do {

//Declaração de variáveis.
let nomeDoAluno, nota1, nota2, nota3, nota4, media;

//Recebe o nome do aluno.
nomeDoAluno = prompt("Digite o nome do aluno: "); 

//Recebe as notas do aluno.
nota1 = parseFloat(prompt("Digite a primeira nota:"));
nota2 = parseFloat(prompt("Digite a primeira nota:"));
nota3 = parseFloat(prompt("Digite a primeira nota:"));
nota4 = parseFloat(prompt("Digite a primeira nota:"));

//Calcula a média.
media = (nota1+nota2+nota3+nota4)/4;
console.log (media);

if (media <= 5){
    console.log (`O Aluno ${nomeDoAluno} está REPROVADO, sua média é: ${media}`);
} if (media > 5 && media <= 7) {
    console.log (`O Aluno ${nomeDoAluno} está de RECUPERAÇÃO, sua média é: ${media}`);
} if (media > 7 && media <=9) {
    console.log (`O Aluno ${nomeDoAluno} está APROVADO, sua média é: ${media}`);
} if (media === 10) {
    console.log (`O Aluno ${nomeDoAluno} está SUPER APROVADO, sua média é: ${media}`);
}

const repetir = prompt("Deseja uma nova consulta? (S/N): ").toUpperCase();

if (repetir !== "S") {
    break;
}

} while (true);