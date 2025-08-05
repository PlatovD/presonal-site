<html>
<head>
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css"/>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <link rel="stylesheet" href="../resources/css/base.css">
    <title>My page</title>
</head>
<body>
<div class="header">
    <div class="logo">Platov Dmitrii</div>
    <div>
        <ul class="header__items-container">
            <li><a class="link" href="/biography">
                Biography
            </a></li>
            <li><a class="link" href="/technologies">
                Technologies
            </a></li>
            <li><a class="link" href="/pet-projects">
                Pet projects
            </a></li>
            <li><a class="link" href="/contacts">
                Contacts
            </a></li>
        </ul>
    </div>
</div>
<div class="main">
    <div class="wrapper">
        <div class="terminal">
            <div class="terminal__text">
                <p class="terminal-command" id="typewriter"></p>
                <p class=""></p>
            </div>
        </div>
    </div>
    <div class="wrapper">
        <div class="grid-margin">
            <div class="navigation">
                <div class="navigation__box" data-aos="fade-up">
                    <img class="navigation__box__img" src="../resources/img/biography.png">
                    <div class="decoration-line"></div>
                    <p class="navigation__box__text">Космос бескрайний и загадочный, в его глубинах скрываются миллиарды
                        звёзд, каждая из которых
                        может
                        быть центром своей планетной системы. Человечество лишь начало изучать просторы Вселенной, но
                        уже</p>
                </div>
                <div class="navigation__box" data-aos="fade-up">
                    <img class="navigation__box__img" src="../resources/img/technologies.png">
                    <div class="decoration-line"></div>
                    <p class="navigation__box__text">Космос бескрайний и загадочный, в его глубинах скрываются миллиарды
                        звёзд, каждая из которых
                        может
                        быть центром своей планетной системы. Человечество лишь начало изучать просторы Вселенной, но
                        уже</p>
                </div>
                <div class="navigation__box" data-aos="fade-up">
                    <img class="navigation__box__img" src="../resources/img/pet-projects.png">
                    <div class="decoration-line"></div>
                    <p class="navigation__box__text">Космос бескрайний и загадочный, в его глубинах скрываются миллиарды
                        звёзд, каждая из которых
                        может
                        быть центром своей планетной системы. Человечество лишь начало изучать просторы Вселенной, но
                        уже</p>
                </div>
                <div class="navigation__box" data-aos="fade-up">
                    <img class="navigation__box__img" src="../resources/img/contacts.png">
                    <div class="decoration-line"></div>
                    <p class="navigation__box__text">Космос бескрайний и загадочный, в его глубинах скрываются миллиарды
                        звёзд, каждая из которых
                        может
                        быть центром своей планетной системы. Человечество лишь начало изучать просторы Вселенной, но
                        уже</p>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
<script src="https://unpkg.com/typewriter-effect@2.18.0/dist/core.js"></script>
<script src="../resources/js/terminal.js"></script>
<script>
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
</script>
</body>
</html>
