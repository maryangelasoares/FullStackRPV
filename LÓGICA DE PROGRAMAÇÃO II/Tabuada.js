const prompt = require("prompt-sync")();

let continuar;

do {
    // Solicita ao usuário um número para a tabuada
    let numero = prompt("Digite um número para a tabuada:");

    // Verifica se o número é válido
    if (isNaN(numero) || numero === "" || numero <=0  ) {
        console.log("Número inválido. Por favor, digite um número válido.");
    } else {
        // Converte o número para inteiro
        const numeroInteiro = parseInt(numero);

        // Imprime a tabuada do número fornecido pelo usuário
        for (let i = 1; i <= 10; i++) {
            console.log(`${numeroInteiro} x ${i} = ${numeroInteiro * i}`);
        }
    }

    // Pergunta ao usuário se deseja digitar outro número
    let resposta = prompt("Deseja digitar outro número? (S/N)");

    continuar = resposta.toUpperCase() === "S";
} while (continuar);