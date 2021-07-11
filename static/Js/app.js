const hamburger = document.querySelector(".menu_toggle");
const menuss = document.querySelector(".menu");

hamburger.addEventListener("click", () => {
    menuss.classList.toggle("open");
});