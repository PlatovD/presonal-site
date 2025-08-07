import Terminal from "/resources/js/terminal.js"

AOS.init();

const writer = new Typewriter('#typewriter', {
    loop: false,
    delay: 50,
    cursor: '',
});

writer
    .typeString('<p>guest@guest ~# welcome</p>')
    .pauseFor(200)
    .typeString("<p>Welcome to my digital realm! Like a multilingual translator between humans and machines, I speak Java, Python and C++ fluently. Let's build something extraordinary.</p>")
    .pauseFor(200)
    .callFunction(() => {
        const term = new Terminal(".terminal__text");
    })
    .start();

var swiper = new Swiper(".mySwiper", {
    slidesPerView: 3,
    grid: {
        rows: 2,
    },
    spaceBetween: 30,
    pagination: {
        el: ".swiper-pagination",
        clickable: true,
    },
});