/*Crie uma estrutura pensando em uma biblioteca, que realiza  empréstimos de livros para alunos devidamente matriculados em 
uma turma ou curso. */

// Função para criar um objeto aluno
function criarAluno(nome, matricula, turma) {
    return {
      nome: nome,
      matricula: matricula,
      turma: turma,
      livrosEmprestados: []
    };
  }
  
  // Função para criar um objeto livro
  function criarLivro(titulo, autor, codLivro) {
    return {
      titulo: titulo,
      autor: autor,
      codLivro: codLivro,
      disponivel: true
    };
  }
  
  // Objeto que representa a biblioteca
  const biblioteca = {
    livros: [
      criarLivro('JavaScript: The Good Parts', 'Douglas Crockford', '978-0596517748'),
      criarLivro('Clean Code', 'Robert C. Martin', '978-0132350884'),
      criarLivro('Design Patterns', 'Erich Gamma', '978-0201633610'),
      criarLivro('Informática A-Z', 'João Paulo Colet Orso', '978-6559184446'),
      criarLivro('Entendendo Algoritmos', 'Aditya Y. Bhargava', '978-8575225639')
    ],
    alunos: [
      criarAluno('João', '123', 'A101'),
      criarAluno('Maria', '456', 'B202'),
      criarAluno('Ana', '789', 'A202'),
      criarAluno('Francisco', '452', 'B102'),
      criarAluno('Joana', '852', 'A101')
    ],
    emprestarLivro: function (aluno, livro) {
      if (livro.disponivel) {
        aluno.livrosEmprestados.push(livro);
        livro.disponivel = false;
        console.log(`Livro "${livro.titulo}" emprestado para ${aluno.nome}.`);
      } else {
        console.log(`O livro "${livro.titulo}" não está disponível no momento.`);
      }
    },
    devolverLivro: function (aluno, livro) {
      const index = aluno.livrosEmprestados.indexOf(livro);
      if (index !== -1) {
        aluno.livrosEmprestados.splice(index, 1);
        livro.disponivel = true;
        console.log(`Livro "${livro.titulo}" devolvido por ${aluno.nome}.`);
      } else {
        console.log(`O aluno ${aluno.nome} não possui o livro "${livro.titulo}".`);
      }
    }
  };
  
  // Exemplo de uso
  const alunoJoao = biblioteca.alunos[0];
  const livroJavaScript = biblioteca.livros[0];
  
  biblioteca.emprestarLivro(alunoJoao, livroJavaScript);
  
  console.log(alunoJoao.livrosEmprestados);
  
  biblioteca.devolverLivro(alunoJoao, livroJavaScript);
  
  console.log(alunoJoao.livrosEmprestados);