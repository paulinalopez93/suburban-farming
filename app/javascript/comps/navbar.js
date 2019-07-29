const navbarVisible = () => {
  console.log("navbar function");
  const navbar = document.querySelector(".navbar-white");
  const navbarUnvisible = () => {
    navbar.style.opacity = "0";
    navbar.style.color = "white !important";
    if (navbar) {
      let navlinks = document.querySelectorAll(".nav-link");
      navlinks.forEach( (link) => {
        link.style.color = "white";
      })
    }
  }
  if (navbar) {

  navbarUnvisible();

  setTimeout( function() {
    navbar.style.opacity = "1";
    if (navbar) {
      let navlinks = document.querySelectorAll(".nav-link");
      navlinks.forEach( (link) => {
        link.style.opacity = "1";
      })
    }

  }, 500);
}
}

export { navbarVisible };
