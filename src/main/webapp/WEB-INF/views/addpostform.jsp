<%--
  Created by IntelliJ IDEA.
  User: song-yeji
  Date: 2022/12/01
  Time: 6:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>AddPost</title>
</head>
<body>
    <form action="addok" method="get">
        <table id = "edit">
            <tr><td>카테고리</td><td><input type="text" name="category"/></td></tr>
            <tr><td>제목</td><td><input type="text" name="title"/></td></tr>
            <tr><td>글쓴이</td><td><input type="text" name="writer"/></td></tr>
            <tr><td>내용</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
        </table>
        <button type="button" onclick="location.href='list'">목록보기</button>
        <button type="submit">등록하기</button>
    </form>
</body>
</html>
