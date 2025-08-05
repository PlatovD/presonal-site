class Terminal {
    commandInput = null;

    constructor(terminalBlock) {
        this.terminalBlock = document.querySelector(terminalBlock);
        if (terminalBlock === null)
            throw new Error("Element is missed. Not found")
        this.init()
    }

    init() {
        this.createNewCommandInput();
        document.addEventListener("keyup", this.handleEvent.bind(this));
    }

    handleEvent(event) {
        if (event.key === "Enter") { // some extra logics to handle commands
            this.stepAfterExecution();
            return;
        }

        if (event.key === 'Backspace' && this.commandInput.textContent !== 'guest@guest ~# ') {
            this.commandInput.textContent = this.commandInput.textContent.slice(0, -1)
        }

        if (event.key.length === 1) {
            this.commandInput.textContent += event.key;
        }
    }

    stepAfterExecution() {
        this.createNewCommandInput();
        this.terminalBlock.scrollIntoView({
            behavior: 'smooth', // 'auto' (default) or 'smooth'
            block: 'end',
        });
    }

    createNewCommandInput() {
        this.commandInput = document.createElement('p');
        this.commandInput.textContent = 'guest@guest ~# '
        this.terminalBlock.append(this.commandInput);
    }
}