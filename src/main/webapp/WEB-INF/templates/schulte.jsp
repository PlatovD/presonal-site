<%--
  Created by IntelliJ IDEA.
  User: dima
  Date: 17.10.2025
  Time: 23:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Таблица Шульте</title>
    <link rel="stylesheet" href="/resources/css/schulte.css">
</head>
<body>
<div class="schulte-container">
    <header class="schulte-header">
        <h1>Таблица Шульте</h1>
        <p>Найдите и кликайте цифры по порядку от 1 до 25 как можно быстрее</p>
    </header>

    <div class="game-info">
        <div class="timer">Время: <span id="timer">0</span> сек</div>
        <div class="current-number">Текущая цифра: <span id="currentNumber">0</span></div>
    </div>

    <!-- Основной контейнер для матрицы -->
    <div class="matrix-container" id="matrixContainer">
        <!-- Матрица 5x5 будет заполнена через JavaScript -->
    </div>

    <div class="controls">
        <button id="startBtn" class="control-btn start">Начать тест</button>
    </div>
</div>

<script src="/resources/js/psychology.js"></script>
</body>
</html>
