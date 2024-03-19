const prompt = require('prompt-sync')();

function calcularQuadrado(numero) {
    const quadrado = numero * numero;
    return quadrado;
  }
  
  // Exemplo de uso
  const numeroDigitado = parseFloat(prompt("Digite um número: "));
  
  if (!isNaN(numeroDigitado)) {
    const resultado = calcularQuadrado(numeroDigitado);
    console.log(`O quadrado de ${numeroDigitado} é ${resultado}.`);
  } else {
    console.error("Por favor, digite um número válido.");
  }