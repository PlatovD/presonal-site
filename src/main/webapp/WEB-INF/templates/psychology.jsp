<%--
  Created by IntelliJ IDEA.
  User: dima
  Date: 17.10.2025
  Time: 20:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Таблица Шульте</title>
    <link rel="stylesheet" href="/resources/css/psychology.css">
</head>
<body>
<div class="container">
    <header class="header">
        <h1>Таблица Шульте</h1>
        <p>Тест на развитие внимания и периферического зрения</p>
    </header>

    <div class="buttons-section">
        <a href="/schulte" class="test-btn">Начать тест</a>
    </div>

    <div class="results-section">
        <h2>Мои результаты</h2>
        <div class="table-container">
            <table class="results-table">
                <thead>
                <tr>
                    <th>Время</th>
                    <th>Дата прохождения</th>
                </tr>
                </thead>
                <tbody>
                <c:choose>
                    <c:when test="${not empty resultList}">
                        <c:forEach var="result" items="${resultList}">
                            <tr>
                                <td class="time-cell">${result.timeSeconds} сек</td>
                                <td class="date-cell">${result.name}</td>
                            </tr>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <tr>
                            <td colspan="2" class="no-results">Пока нет результатов</td>
                        </tr>
                    </c:otherwise>
                </c:choose>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
