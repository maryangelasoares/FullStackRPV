/* A partir do preço à vista de um determinado produto, calcule o preço total a pagar e o valor da prestação
mensal, referentes ao pagamento parcelado. Se o pagamento for parcelado em 3 vezes deve ser dado um 
acréscimo de 10% no total a ser pago. Se o parcelamento for em 5 vezes, o acréscimo será de 20%. */

const prompt = require ('prompt-sync')();

//Declaração de variáveis.
let valorProduto, parc3, parc5, pagamento;

//Recebe o valor do produto.
valorProduto = parseFloat(prompt('Digite o valor do produto: '));

//Imprime o valor do produto e as opções de pagamento.
console.log (`O Valor do produto é: ${valorProduto.toFixed(2)}. \n
Para PAGAMENTO À Vista - Digite "1"
Para PAGAMENTO PARCELADO EM 3x - Digite "2"
Para PAGAMENTOPARCELADO EM 5x - Digite "3".\n`);

//Recebe a opção de pagamento.
pagamento = parseFloat(prompt('Qual opção de pagamento desejada: '));
console.log ('\n');

//Verifica a opção de pagamento e imprime o valor total e o valor das parcelas.
if (pagamento === 1){
    console.log (`O valor total à pagar é: ${valorProduto.toFixed(2)}`);
    console.log ("\n");
} if (pagamento === 2) {
    parc3 = valorProduto * 0.10 + valorProduto;
    console.log (`O valor total à pagar será de: ${parc3.toFixed(2)} e as parcelas serão fixas de: ${(parc3/3).toFixed(2)}.` );
    console.log ("\n");
} if (pagamento === 3){
    parc5 = valorProduto * 0.20 + valorProduto;
    console.log (`O valor total à pagar será de: ${parc5.toFixed(2)} e as parcelas serão fixas de: ${(parc5/5).toFixed(2)}.` );
    console.log ("\n");
}
