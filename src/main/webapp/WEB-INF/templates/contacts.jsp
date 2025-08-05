<%--
  Created by IntelliJ IDEA.
  User: dima
  Date: 05.08.2025
  Time: 11:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="/saveAppeal" method="post">
    <label>
        Ваше име <input type="text" name="name">
    </label>
    <label>
        Ваши контакты <input type="text" name="contact">
    </label>

    <label>
        Сообщение <textarea name="message"></textarea>
    </label>
    <button type="submit">Отправить</button>

</form>

</body>
</html>