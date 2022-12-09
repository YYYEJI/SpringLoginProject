<%--
  Created by IntelliJ IDEA.
  User: song-yeji
  Date: 2022/12/01
  Time: 7:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>List</title>
    <style>
        table {
            border-collapse: collapse;
            font-family: arial;
            width: 100%;
        }
        td {
            text-align: center;
        }
    </style>
</head>
<script>
    function delete_ok(id) {
        var a = confirm("정말로 삭제하겠습니까?");
        if(a) location.href='./deleteok/' + id;
    }
</script>
<body>
    <table border="1">

        <tr style="background-color: lavenderblush">
            <th>id</th>
            <th>카테고리</th>
            <th>제목</th>
            <th>글쓴이</th>
            <th>내용</th>
            <th>등록일</th>
            <th>수정</th>
            <th>삭제</th>
        </tr>
        <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.seq}</td>
            <td>${u.category}</td>
            <td>${u.title}</td>
            <td>${u.writer}</td>
            <td>${u.content}</td>
            <td>${u.regdate}</td>
            <td><a href="./editform?id=${u.seq}">글수정</a></td>
            <td><a href="javascript:delete_ok('${u.seq}')">글삭제</a></td>
        </tr>
    </c:forEach>
    </table>
    <br/><button type="button" onclick="location.href='./add'">새글쓰기</button>
    <br/><button type="button" onclick ="location.href='../login/logout'">로그아웃</button>
</body>
</html>
