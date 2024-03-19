let cursoProfissional = { //Conjunto de Dados = Objeto.
    nomeAluno : 'Maryângela', 
    nomeCurso : 'FullStack',
    valorCurso : 425.90,
    infoCurso : [
    ['Manhã', 'Tarde', 'Noite'] 
    ],
    cursoConcluido: [
        {nomeCurso : 'DesenvolvimentoWEB', anoConclusao : 2015},
        {nomeCurso : 'Informática', anoConclusao : 2018},
        {nomeCurso : 'Banco de Dados', anoConclusao : 2022},
        {nomeCurso : 'PowerBi', anoConclusao : 2023}
    ],
    historicoAluno: [ //Array e dentro objeto.
        {
            ensinoMedio: 'Concluído', 
            anoConclusao: 2016, 
            ensinoSuperior: "Cursando",
        },
        hardSkills = ['HTML e CSS', 'JAVASCRIPT', 'BANCO DE DADOS', 'PHP'],
        {
            idiomas : {
                inglês: 'Avançado', 
                espanhol: 'Intermediário', 
                russo: 'Não',
            },
        },
    ],
}

cursoProfissional.infoCurso[0].push("Integral"); //Adicionando elemento no array já existente. 
cursoProfissional.infoCurso[0].splice(0, 3, 'Matutino','Vespertino','Noturno'); //Splice: alterando elementos no Array.
//turma[0] = posição no array;
//splice : 0 = posição na linha do array  3 = quantidade a ser alterada.

cursoProfissional.infoCurso.push(['EAD', 'Semi-Presencial', 'Presencial']); //Adicionando um novo array.
cursoProfissional.infoCurso.push(['Bolsa Integral','Bolsa Parcial']);

cursoProfissional.cursoConcluido[3].anoConclusao = 2016; 
//selecionando uma variável dentro de objeto e mudando no array.

console.log(cursoProfissional);

console.log(cursoProfissional.cursoConcluido);
console.log(cursoProfissional.infoCurso[2][1]);
console.log(cursoProfissional.nomeCurso);
console.log(cursoProfissional.cursoConcluido[2].nomeCurso);
console.log(cursoProfissional.historicoAluno[2]);

cursoProfissional.historicoAluno[2].idiomas.frances = 'Básico';
console.log(cursoProfissional.historicoAluno[2].idiomas); //consultando idiomas no historicoAlunos