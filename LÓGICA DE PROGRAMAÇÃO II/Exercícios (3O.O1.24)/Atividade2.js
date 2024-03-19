/* Crie uma estrutura pensando em uma escola, que possui  alunos, onde há ministração de aulas, realização de cursos, possui
 alunos e professores.*/

 // Função para criar um objeto aluno
function criarAluno(nome, matricula, turma) {
    return {
      nome: nome,
      matricula: matricula,
      turma: turma,
      cursos: []
    };
  }
  
  // Função para criar um objeto professor
  function criarProfessor(nome, disciplina) {
    return {
      nome: nome,
      disciplina: disciplina,
      aulasMinistradas: []
    };
  }
  
  // Função para criar um objeto aula
  function criarAula(nome, professor) {
    return {
      nome: nome,
      professor: professor,
      alunosPresentes: []
    };
  }
  
  // Função para criar um objeto curso
  function criarCurso(nome, alunos, professores) {
    return {
      nome: nome,
      alunos: alunos,
      professores: professores
    };
  }
  
  //Recebendo valores : Alunos, Aulas, Professores e cursos. 
  const aluno1 = criarAluno('Maryângela', '123', 'A101');
  const aluno2 = criarAluno('Fernanda', '456', 'B202');
  const aluno3 = criarAluno('Helóisa', '785', 'A101');
  const aluno4 = criarAluno('Juliana', '159', 'A101');
  const aluno5 = criarAluno('Luciano', '635', 'B202');
  
  const professor1 = criarProfessor('Prof. Silva', 'Banco De Dados');
  const professor2 = criarProfessor('Prof. Oliveira', 'Lógica de Programação');
  const professor3 = criarProfessor('Prof. Andrade', 'Inglês')

  professor1.aulasMinistradas.push(1);
  professor2.aulasMinistradas.push(5);
  professor3.aulasMinistradas.push(3);
  
  const aulaBancoDeDados = criarAula('Aula de Banco de Dados', professor1);
  const aulaLogica = criarAula('Aula de Lógica de Programação', professor2);
  const aulaIngles = criarAula('Aula de Inglês', professor3)
  
  aulaBancoDeDados.alunosPresentes.push(aluno1, aluno2);
  aulaLogica.alunosPresentes.push(aluno1);
  aulaIngles.alunosPresentes.push(aluno2, aluno5, aluno3);
  
  const curso1 = criarCurso('Curso de Bando de Dados', [aluno1, aluno2], [professor1]);
  const curso2 = criarCurso('Curso de Lógica de Programação', [aluno1, aluno4, aluno2], [professor2]);
  const curso3 = criarCurso('Curso de Inglês', [aluno2, aluno5, aluno3], [professor3]);

  console.log(curso1);
  console.log(curso2);
  console.log(curso3);

  console.log(professor1);
  console.log(professor2);
  console.log(professor3);