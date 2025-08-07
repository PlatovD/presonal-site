import {
    TERM_PROMPT,
    ANSWERS_DICT,
} from '/resources/js/constants.js';

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
            this.executeCommand(this.parseCommand(this.commandInput.textContent));
            this.stepAfterExecution();
            return;
        }

        if (event.key === 'Backspace' && this.commandInput.textContent !== TERM_PROMPT) {
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
        this.commandInput.textContent = TERM_PROMPT;
        this.terminalBlock.append(this.commandInput);
    }

    parseCommand(commandToParse) {
        commandToParse = commandToParse.slice(TERM_PROMPT.length);
        return commandToParse;
    }

    executeCommand(command) {
        const ans = document.createElement('p');
        ans.textContent = ANSWERS_DICT[command];
        console.log(ans.textContent);
        if (ans.textContent === undefined || ans.textContent === '')
            ans.textContent = "Wrong command. Type 'help' for more information"
        switch (ans.textContent) {
            case 'clear': {
                this.terminalBlock.innerHTML = '';
                return;
            }

            case 'contacts': {
                window.location.href = "http://localhost:8080/contacts";
            }
        }
        this.terminalBlock.append(ans);
    }
}

export default Terminal;