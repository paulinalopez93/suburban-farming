const navbarVisible = () => {
  console.log("navbar function");
  const navbar = document.querySelector(".navbar-container");
  const navbarUnvisible = () => {
    navbar.style.opacity = "0";

  }
  navbarUnvisible();
  setTimeout( function() {
    navbar.style.opacity = "1";

  }, 500);
}

export { navbarVisible };
