const navbar = document.querySelector('.navbar2');

window.addEventListener('scroll', function () //rolagem de página
{
  if (this.window.scrollTo > 0) return navbar.classList.add('active');
  return navbar.classList.remove('active');
});
