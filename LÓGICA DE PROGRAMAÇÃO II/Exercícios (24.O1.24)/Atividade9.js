/* Escreva um algoritmo que receba dois números reais e um código de seleção do usuário. Se o código digitado for 1, faça o algoritmo adicionar os dois números previamente digitados e mostrar o 
resultado; se o código de seleção for 2, os números deverão ser multiplicados; se o código de seleção for 3, o primeiro número deve ser dividido pelo segundo. */

const prompt = require ('prompt-sync')();

//Declaração de variáveis.
let numero1 = parseFloat(prompt("Digite o primeiro número: "));
let numero2 = parseFloat(prompt("Digite o segundo número: "));

//Imprime as opções.
console.log ("\n");
console.log (`Escolha entre as opções: 
"1" = Mostrar Valores; 
"2" = Multiplicar Valores; 
"3"  = Dividir Valores.\n `)

//Recebe a opção desejada.
let opDesejada;

//Verifica a opção desejada.
opDesejada = prompt('Digite opção de pagamento desejada: ');

//Verifica a opção desejada.
if (opDesejada === "1"){    
    console.log(`Os números digitados fora: ${numero1} e ${numero2}. E a sua soma é: ${numero1 + numero2}. `);
} if (opDesejada === "2") {
    console.log (`O resultado da múltiplicação é: ${numero1 * numero2}. `);
} if (opDesejada === "3"){
    console.log (`O resultado da múltiplicação é: ${numero1 / numero2}. `);
}
