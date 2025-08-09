<html>
<head>
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css"/>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/resources/css/base.css">
    <link rel="stylesheet" href="/resources/css/base-mobile.css">
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
        <svg width="100%" height="50%" id="svg" viewBox="0 0 1000 200" xmlns="http://www.w3.org/2000/svg"
             class="transition duration-700 ease-in-out delay-150 waves-img">
            <style>
                .path-0 {
                    animation: pathAnim-0 30s;
                    animation-timing-function: linear;
                    animation-iteration-count: infinite;
                }

                @keyframes pathAnim-0 {
                    0% {
                        d: path("M 0,400 L 0,150 C 177.19999999999993,153.73333333333335 354.39999999999986,157.46666666666667 515,154 C 675.6000000000001,150.53333333333333 819.6000000000001,139.86666666666667 971,138 C 1122.3999999999999,136.13333333333333 1281.1999999999998,143.06666666666666 1440,150 L 1440,400 L 0,400 Z");
                    }
                    25% {
                        d: path("M 0,400 L 0,150 C 195.86666666666667,156.4 391.73333333333335,162.8 546,148 C 700.2666666666667,133.2 812.9333333333334,97.19999999999999 955,94 C 1097.0666666666666,90.80000000000001 1268.5333333333333,120.4 1440,150 L 1440,400 L 0,400 Z");
                    }
                    50% {
                        d: path("M 0,400 L 0,150 C 123.59999999999997,180 247.19999999999993,210 432,220 C 616.8000000000001,230 862.8,220 1041,205 C 1219.2,190 1329.6,170 1440,150 L 1440,400 L 0,400 Z");
                    }
                    75% {
                        d: path("M 0,400 L 0,150 C 128.13333333333333,107.06666666666666 256.26666666666665,64.13333333333333 424,87 C 591.7333333333333,109.86666666666667 799.0666666666666,198.53333333333336 975,220 C 1150.9333333333334,241.46666666666664 1295.4666666666667,195.73333333333332 1440,150 L 1440,400 L 0,400 Z");
                    }
                    100% {
                        d: path("M 0,400 L 0,150 C 177.19999999999993,153.73333333333335 354.39999999999986,157.46666666666667 515,154 C 675.6000000000001,150.53333333333333 819.6000000000001,139.86666666666667 971,138 C 1122.3999999999999,136.13333333333333 1281.1999999999998,143.06666666666666 1440,150 L 1440,400 L 0,400 Z");
                    }
                }</style>
            <path d="M 0,400 L 0,150 C 177.19999999999993,153.73333333333335 354.39999999999986,157.46666666666667 515,154 C 675.6000000000001,150.53333333333333 819.6000000000001,139.86666666666667 971,138 C 1122.3999999999999,136.13333333333333 1281.1999999999998,143.06666666666666 1440,150 L 1440,400 L 0,400 Z"
                  stroke="none" stroke-width="0" fill="#152ab6" fill-opacity="1"
                  class="transition-all duration-300 ease-in-out delay-150 path-0"></path>
        </svg>
        <div class="water">
            <div class="resume">
                <div class="resume__images">
                    <img src="/resources/img/dima.png" alt="">
                </div>
                <div class="resume__text">
                    <div class="resume__text__point">
                        <h4>Introduction</h4>
                        <div class="decoration-line"></div>
                        <p>My name is Dima, and I'm 18 years old. Happy to see you on my own website. Here I am
                            going to
                            tell you about me and my knowledge.</p>
                    </div>
                    <div class="resume__text__point">
                        <h4>Information</h4>
                        <div class="decoration-line"></div>
                        <ul>
                            <li>Citizenship: Russia</li>
                            <li>City: Voronezh</li>
                            <li>Education: Incomplete Higher Education</li>
                        </ul>
                    </div>
                    <div class="resume__text__point">
                        <h4>Education</h4>
                        <div class="decoration-line"></div>
                        <ul>
                            <li>
                                2012-2024 - Gymnasium No. 9, Voronezh
                                <p>
                                    Specialized in Mathematics & Computer science. Developed my first programs on
                                    Python. I scored 260+ points on the Russian Unified State Exam (EGE).
                                </p>
                            </li>
                            <li>
                                2024-to date - Voronezh State University, Voronezh
                                <p>
                                    Faculty of Computer Science. Field of study: Software Engineering.
                                </p>
                            </li>
                            <li>Python courses (Sergey Balakirev), Spring course (Zaur Tregulov), C++ course (DSR
                                Corporation)
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="wrapper">
        <div id="grid-technologies">
            <h2 class="technologies__h">Skills</h2>
            <div class="technologies">
                <c:forEach var="tech" items="${technologies}">
                    <div class="technologies__container" data-aos="fade-up">
                        <img src="${tech.imagePath}" alt="">
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
    <div class="wrapper">
        <div class="pet-projects">
            <div class="pet-project__container">
                <img src="" alt="">
                <p class="pet-project__container__text"></p>
                <div class="pet-project__container__link"></div>
            </div>
        </div>
    </div>
    <div class="wrapper">
        <div class="pets">
            <h2>Portfolio</h2>
            <c:forEach var="pet" items="${pets}">
                <div class="grid-margin">
                    <div class="pet__container">
                        <div class="pet__container__description">
                            <h4>${pet.name}</h4>
                                <%--                            <a class="link" href="${pet.link}">View</a>--%>
                            <p>${pet.description}</p>
                        </div>
                        <img data-aos="flip-up" src="${pet.imagePath}" alt="">
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
    <div class="wrapper">
        <div class="form-container">
            <h2>Text me!</h2>
            <form id="appealForm">
                <p>Your name</p>
                <input type="text" name="name">

                <p>Your contact information</p>
                <input type="text" name="contact">

                <p>Your message</p>
                <textarea name="message"></textarea>

                <button id="appeal-button" type="button">Send</button>

            </form>
        </div>
    </div>
</div>
<script src=" https://unpkg.com/aos@next/dist/aos.js"></script>
<script src="https://unpkg.com/typewriter-effect@2.18.0/dist/core.js"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<script type="module" src="/resources/js/index.js"></script>
</body>
</html>
