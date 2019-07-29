const navbarOnScroll = () => {
  console.log("navbar scroll function");
  const navbar = document.querySelector('.navbar-container');
  let prevScroll = window.pageYOffset;

  if (navbar) {
    window.addEventListener('scroll', () => {
      let currentScroll = window.pageYOffset;
      if ( prevScroll > currentScroll ) {
        navbar.style.opacity = "1";
      } else {
        navbar.style.opacity = "0";
      }
      prevScroll = currentScroll;

    })
  }
}

export { navbarOnScroll }
