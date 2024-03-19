function calcularImovel(metragem, quartos) {
    // Definindo o valor base por metro quadrado
    const valorBasePorM2 = 3000;
  
    // Aplicando o fator de acordo com o número de quartos
    let fatorQuartos = 1;
    if (quartos === 1) {
      fatorQuartos = 1;
    } else if (quartos === 2) {
      fatorQuartos = 1.2;
    } else if (quartos === 3) {
      fatorQuartos = 1.5;
    } else {
      console.error("Número de quartos inválido. Apenas 1, 2 ou 3 quartos são suportados.");
      return null;
    }
  
    // Calculando o preço do imóvel
    const preco = metragem * valorBasePorM2 * fatorQuartos;
    return preco;
  }
  
  // Exemplo de uso
  let metragem = 123;
  let quartos = 1;
  let preco = calcularImovel(metragem, quartos);
  
  if (preco !== null) {
    console.log(`A casa custa R$ ${preco}`);
  }