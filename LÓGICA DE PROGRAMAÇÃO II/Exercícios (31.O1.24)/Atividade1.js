function calcularPorcentagem(valorParcial, valorTotal) {
    if (valorTotal === 0) {
      console.error("O valor total não pode ser zero.");
      return null;
    }
  
    const porcentagem = (valorParcial / valorTotal) * 100;
    return porcentagem;
  }
  
  // Exemplo de uso
  const valorParcial = 10;
  const valorTotal = 40;
  
  const resultadoPorcentagem = calcularPorcentagem(valorParcial, valorTotal);
  
  if (resultadoPorcentagem !== null) {
    console.log(`${valorParcial} é ${resultadoPorcentagem}% de ${valorTotal}.`);
  } else {
    console.log("Não é possível calcular a porcentagem quando o valor total é zero.");
  }