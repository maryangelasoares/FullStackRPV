/* A taxa de natalidade e a taxa de mortalidade são indicadores estatísticos de fundamental  importância por ajudar a compreender aquilo que os especialistas chamam de dinâmica  populacional 
e a entender sua relação com variáveis que influenciam o desenvolvimento, como qualidade de vida, migrações, fatores socioeconômicos e localização. Sabendo disso, crie um  programa que calcule 
os dois indicadores utilizando o comando switch. 
Observação: A taxa de natalidade é calculada pela seguinte fórmula: taxa de natalidade =  (número de crianças nascidas x 1000) / número de habitantes; 
Enquanto que, a taxa de mortalidade = (números de óbitos x 1000) /número de habitantes. */

const prompt = require('prompt-sync')();

//Declaração de variáveis.
let natalidade, mortalidade, nascimentos, obitos, habitantes;

//Recebe os dados.
nascimentos = parseInt(prompt("Qual o número de nascimentos? "));
obitos = parseInt(prompt("Qual o número de óbitos? "));
habitantes = parseInt(prompt("Qual o número de habitantes? "));
console.log ("\n");

//Recebe a taxa desejada.
console.log("Por favor, para o cálculo é necessário uma das opções abaixo: ");
console.log("As opções disponiveis são: \n N - Natalidade \n M - Mortalidade");
taxa = prompt("Qual a opção desejada? (N/M): ");

//Verifica a taxa desejada.
switch (taxa) {
    case "N":
        natalidade = (nascimentos * 1000) / habitantes;
        console.log("A taxa de natalidade é, ", natalidade.toFixed(2));
        break;

    case "M":
        mortalidade = (obitos * 1000) / habitantes;
        console.log("A taxa de mortalidade é, ", mortalidade.toFixed(2));
        break;

    default:
        console.log("Opção inválida.");
        break;
}