export const navbarScroll = () => {
  window.addEventListener("scroll", function () {
    const navbar = document.querySelector(".navbar-lewagon");
    navbar.classList.toggle("sticky", window.scrollY > 50);
  });
}