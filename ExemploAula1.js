let idadeMarcelo = 25;
let idadeTalita = 18;

if (idadeMarcelo > 18){
    console.log ("Pode entrar no curso RPV.\n");
} else {
         console.log ("Não pode entrar no curso RPV.\n");
     }
 
 if (idadeTalita > 18){
    console.log ("Pode entrar no curso RPV.\n");
} else {
         console.log ("Não pode entrar no curso RPV.\n");
     }

/* O operador == compara por "resultado" digamos assim, ou seja como JavaScript não 
é fortemente tipado ele converte o que você tá querendo comparar e verifica ou seja:
if (true == 'true')  // aqui vai dar true
if (true == '1')     // aqui vai dar true
if (true == true)    // aqui vai dar true
if (true === 'true') // aqui vai dar false
if (true === '1')    // aqui vai dar false
if (true === true)   // aqui vai dar true. */

/* O operador triplo === significa "igualdade estrita".
Para ser mais exato, o algoritmo, numa comparação x === y é:
Se Type(x) é diferente de Type(y), retorna false.
Se Type(x) é Undefined, retorna true.
Se Type(x) é Null, retorna true.
Se Type(x) é Number, então
    Se x é NaN, retorna false.
    Se y é NaN, retorna false.
    Se x é do mesmo valor numérico que y, retorna true.
    Se x é +0 e y é -0, return true.
    Se x é -0 e y é +0, retorna true.
    Retorna false.
Se Type(x) é String, retorna true se x e y são exatamente a mesma sequência de caracteres
(mesmo tamanho e mesmos caracteres nas posições correspondentes); caso contrário, retorna false.
Se Type(x) é Boolean, retorna true se x e y são ambos true ou ambos false; caso contrário, retorna false.
    Retorna true se x e y referem-se ao mesmo objeto. Caso contrário, retorna false. */

/* "1" == 1; // true, mesmo com tipos diferentes
"1" === 1; // false, justamente devido aos tipos diferentes. */
