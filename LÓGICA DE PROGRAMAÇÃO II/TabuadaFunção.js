// Função para criar a tabuada de um número específico
function tabuada(numero) {
    console.log(`Tabuada do ${numero}:`);
    for (let i = 1; i <= 10; i++) {
      console.log(`${numero} x ${i} = ${numero * i}`);
    }
    console.log();
  }
  
  // Criar a tabuada de 1 a 10 chamando a função para cada número
  for (let i = 1; i <= 10; i++) {
    tabuada(i);
  }