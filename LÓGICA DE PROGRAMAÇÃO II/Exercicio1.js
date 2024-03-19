const prompt = require('prompt-sync')();

// Solicitar a primeira idade
const idade1 = prompt('Digite a primeira idade: ');

// Solicitar a segunda idade
const idade2 = prompt('Digite a segunda idade: ');

// Converte as idades para números
const numIdade1 = Number(idade1);
const numIdade2 = Number(idade2);

// Verifica qual idade é maior e qual é menor
if (numIdade1 > numIdade2) {
  console.log(`A primeira idade (${numIdade1} anos) é maior que a segunda idade (${numIdade2} anos).`);
  console.log(`A segunda idade (${numIdade2} anos) é menor que a primeira idade (${numIdade1} anos).`);
} else if (numIdade1 < numIdade2) {
  console.log(`A segunda idade (${numIdade2} anos) é maior que a primeira idade (${numIdade1} anos).`);
  console.log(`A primeira idade (${numIdade1} anos) é menor que a segunda idade (${numIdade2} anos).`);
} else {
  console.log('As duas idades são iguais.');
}