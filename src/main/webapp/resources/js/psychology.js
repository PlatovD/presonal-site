// finding window objects
let startButton = document.querySelector("#startBtn")
let matrixContainer = document.querySelector("#matrixContainer")
let currentNumber = document.querySelector("#currentNumber");
let timer = document.querySelector("#timer")
let name;

let currentTimeVar = 0;
let timerInterval;
let currentNumberVar = 0;

startButton.addEventListener("click", handleStart)

function handleStart() {
    currentTimeVar = 0;
    currentNumberVar = 0;
    name = prompt("Введите Ваш никнейм для попытки:")
    handleStep();
    startTimer();
}

function handleStep() {
    if (currentNumberVar === 25) {
        return handleStop()
    }
    currentNumberVar++;
    currentNumber.textContent = currentNumberVar;
    randomizeMatrix()
}

function handleStop() {
    stopTimer()
    matrixContainer.innerHTML = '';
    sendResult(currentTimeVar, name)
    currentTimeVar = 0;
    currentNumberVar = 0;
    timer.textContent = 0;
    currentNumber.textContent = 0;
}

async function sendResult(timePassing, username) {
    const data = {
        name: username,
        timeSeconds: timePassing
    };

    try {
        const response = await fetch('/api/saveResult', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify(data)
        });

        if (response.ok) {
            alert('Результат сохранен!');
        } else {
            alert('Ошибка сохранения результата');
        }
    } catch (error) {
        console.error('Error:', error);
        alert('Ошибка соединения');
    }
}

function randomizeMatrix() {
    matrixContainer.innerHTML = '';

    let numbers = Array.from({length: 25}, (_, i) => i + 1)
        .sort(() => Math.random() - 0.5);

    numbers.forEach(num => {
        const cell = document.createElement('div');
        cell.className = 'matrix-cell';
        cell.textContent = num;
        matrixContainer.appendChild(cell);
        if (num === currentNumberVar) cell.addEventListener("click", handleStep)
    });
}

function startTimer() {
    currentTimeVar = 0;
    timerInterval = setInterval(() => {
        currentTimeVar++;
        document.getElementById('timer').textContent = currentTimeVar;
    }, 1000);
}

function stopTimer() {
    clearInterval(timerInterval);
}
