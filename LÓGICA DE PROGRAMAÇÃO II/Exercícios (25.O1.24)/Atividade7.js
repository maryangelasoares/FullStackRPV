/* 7. Dado o valor do produto e a forma de pagamento. 
1= à vista; 
2= à prazo. 
Se o produto for pago à vista aplique um desconto de 10% antes de mostrar o valor final, senão  informe o mesmo valor do produto. */

const prompt = require('prompt-sync')();

//Declaração de variáveis.
let valorProduto, formaPagamento, valorFinal;

//Recebe os dados para o cálculo.
valorProduto = parseFloat(prompt("Qual o valor do produto? "));
console.log ("\n");

//Recebe a forma de pagamento.
console.log("Para informações de pagamento é necessário uma das opções abaixo:");
console.log("1 - À vista \n 2 - À prazo");

formaPagamento = parseInt(prompt("Qual a forma de pagamento desejada? (1/2): "));
console.log ("\n");

//Verifica a forma de pagamento.
switch (formaPagamento) {
    case 1:
        valorFinal = valorProduto - (valorProduto * 0.1);
        console.log("O valor para pagamento à vista é, ", valorFinal.toFixed(2));
        break;

    case 2:
        valorFinal = valorProduto;
        console.log("O valor para pagamento à prazo é, ", valorFinal.toFixed(2));
        break;

    default:
        console.log("Opção inválida.");
        break;
}