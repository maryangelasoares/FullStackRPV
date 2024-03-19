/* Suponha que você esteja desenvolvendo o sistema de um hotel que deva exibir mensagens  na recepção para diferentes ações dos hospedes. 
Incremente o sistema incluindo a solicitação  de entrada do nome hóspede. Segue abaixo algumas sugestões de opções a ser utilizada na  aplicação. 
Fazer Check-in 
Chamar serviço de quarto 
Fazer pedido 
Fazer Check-out */ 

const prompt = require('prompt-sync')();

//Declaração de variáveis.
let nomeHospede, idadeHospede, cidadeHospede;   

//Recebe os dados do hospede.
console.log("Bem vindo ao Hotel da Blue");
console.log("Por favor, informe os dados do hospede.");

//Recebe os dados do hospede.
nomeHospede = prompt("Qual o seu nome? ");
idadeHospede = prompt("Qual a sua idade? "); 
cidadeHospede = prompt("Qual o sua cidade? ");

//Imprime os dados do hospede.
console.log("Obrigado pelas informações, " + nomeHospede + "!");
console.log("Aproveite sua estadia em nosso hotel.\n");
console.log ( "Os serviços disponiveis são:\n 1 - Fazer Check-in. \n 2 - Chamar serviço de quarto. \n 3 - Fazer pedido; \n 4 - Fazer Check-out; ");

//Recebe o serviço desejado.
let servico = parseInt(prompt("Qual serviço você deseja? "));

//Verifica o serviço desejado.
switch (servico) {
    case 1:
        console.log("Check-in realizado com sucesso!");
        console.log("Seja bem vindo, " + nomeHospede + ". É uma honra te ter aqui conosco!");
        console.log("Caso precise de algo durante a sua estadia, é só entrar em contato.")
        break;

    case 2:
        console.log("Serviço de quarto solicitado com sucesso!");
        console.log("Em breve um de nossos funcionários entrará em contato, " + nomeHospede + "!");
        break;

    case 3:
        console.log("Pedido realizado com sucesso!");
        console.log("Em breve seu pedido chegará até seu quarto, " + nomeHospede + "!");
        break;

    case 4:
        console.log("Check-out realizado com sucesso!");
        console.log("Esperamos que sua estadia em nosso Hotel Blue tenha sido satisfatória, " + nomeHospede + ".");
        console.log("Volte sempre que desejar!")
        break;

    default:
        console.log("Opção inválida.");
        break;
}