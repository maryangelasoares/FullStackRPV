// function clique() {
//     alert("Botão clicado!");
// }

// let botao = document.querySelector('.botao');
// botao.addEventListener('click', () =>{
//     clique();
// });



function clique(){
    const teste = document.querySelector('#teste2');
    const ul = teste.querySelector('ul');
    // ul.innerHTML += '<li>Item Alterado</li>';
    // ul.children[0].append('Novo Item');
    // alert('clicou no botão');
    
    
    for (let index = 0; index < 5; index++) {
        let newLi = document.createElement('li');
        newLi.innerHTML = 'novo item: ' + index;
        ul.appendChild(newLi);
    }
    
    // ul.append(newLi);
    // ul.prepend(newLi);
}