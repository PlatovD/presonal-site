export const TERM_PROMPT = 'guest@guest ~# ';
export const ANSWERS_DICT = {
    // Основные команды
    'help': 'Available commands: welcome, about, skills, projects, contact, education, clear',
    'welcome': 'Welcome to my digital realm! Like a multilingual translator between humans and machines, I speak Java, Python and C++ fluently. Let\'s build something extraordinary.',
    'clear': 'clear',

    // Личная информация
    'ulove': 'Zayka❤',
    'uname': 'Dima',
    'usurname': 'Platov',
    'about': 'Full-stack developer with experience building web applications and automation tools.',
    'age': '18 years old',
    'location': 'Voronezh, Russia',

    // Навыки
    'skills': 'Technical skills:\n'
        + '- Frontend: HTML5, CSS3, JavaScript\n'
        + '- Backend: Java/Spring, Python/Django, C++\n'
        + '- Databases: MySQL\n'
        + '- DevOps: Docker, Nginx, Apache2',

    // Контакты
    'contact': 'Reach me at:\n'
        + '• Email: platovdima6@gmail.com\n'
        + '• Telegram: @DimaPlatov09\n'
        + '• GitHub: github.com/PlatovD',

    // // Проекты
    // 'projects': 'Notable projects:\n'
    //     + '1. E-commerce Platform (Spring/React)\n'
    //     + '2. AI Chatbot (Python/NLP)\n'
    //     + '3. Portfolio Terminal (JS/HTML)',
    // 'github': 'Check my GitHub: github.com/DimaPlatov',

    // Образование
    'education': 'Education:\n'
        + '• BSc in Computer Science, SPbU (2016-2020)\n'
        + '• Courses: Algorithms, Machine Learning, Web Security',


    // Fun commands
    'secret': 'You found my secret command! Here\'s a joke:\n'
        + 'Why do Java developers wear glasses?\n'
        + 'Because they can\'t C#!',
    'date': new Date().toLocaleString(),
    'ls': 'about.txt skills.md projects/ contact.html',
    'whoami': 'platovd (Platov Dima) - Fullstack Developer',
    'sudo': 'Error: Permission denied!'
};