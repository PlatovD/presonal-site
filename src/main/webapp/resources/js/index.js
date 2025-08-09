import Terminal from "/resources/js/terminal.js"

import {
    APPEAL_SEND_URL,
} from "/resources/js/constants.js"

function initLibraries() {
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
}

function initHandlers() {
    const form = document.forms.namedItem("appealForm");
    const button = document.querySelector('#appeal-button');

    button.addEventListener('click', async (e) => {
        e.preventDefault();

        await sendAppealToServer(
            form.elements.namedItem("name").value,
            form.elements.namedItem("contact").value,
            form.elements.namedItem("message").value
        )
    });
}

async function sendAppealToServer(name, contact, message) {
    let promise = await fetch(APPEAL_SEND_URL, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
        },
        body: JSON.stringify({name: name, contact: contact, message: message})
    })

    let result = await promise.json();
    alert(result);
}

initLibraries();
initHandlers();
