/* Uma loja fornece 10% de desconto para funcionários e 5% de desconto para clientes vips.  Faça um programa que calcule o valor total a ser pago por uma pessoa. O programa deverá ler  o valor 
total da compra efetuada e um código que identifique se o comprador é um cliente  comum (1), funcionário (2) ou vip (3). */

const prompt = require('prompt-sync')();

//Declaração de variáveis.
let valorCompra, codigoCliente, valorFinal;

//Recebe os dados para o cálculo.
console.log("Por favor, informe os dados para o cálculo. \n");

//Recebe o valor da compra.
valorCompra = parseFloat(prompt("Qual o valor da compra? "));
console.log ("\n");

//Recebe o código do cliente.
console.log("Por favor, para o cálculo é necessário uma das opções abaixo: \n");
console.log("As opções disponiveis são: \n 1 - Cliente Comum \n 2 - Funcionário \n 3 - VIP");

codigoCliente = parseInt(prompt("Qual o seu código? (1/2/3) "));

//Verifica o código do cliente.
switch (codigoCliente) {
    case 1:
        valorFinal = valorCompra;
        console.log("O valor final é, ", valorFinal.toFixed(2));
        break;

    case 2:
        valorFinal = valorCompra - (valorCompra * 0.1);
        console.log("O valor final é, ", valorFinal.toFixed(2));
        break;

    case 3:
        valorFinal = valorCompra - (valorCompra * 0.05);
        console.log("O valor final é, ", valorFinal.toFixed(2));
        break;

    default:
        console.log("Opção inválida.");
        break;
}