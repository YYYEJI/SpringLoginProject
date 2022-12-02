<%--
  Created by IntelliJ IDEA.
  User: song-yeji
  Date: 2022/12/01
  Time: 6:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Edit</title>
</head>
<body>
    <form:form modelAttribute="boardVO" method="get" action="./editok">
        <form:hidden path="seq" />
<%--        <input type="text" name="id" value="${param.id}"/>--%>
        <table id="edit">
            <tr><td>카테고리</td><td><form:input  path="category"/></td></tr>
            <tr><td>제목</td><td><form:input path="title"/></td></tr>
            <tr><td>글쓴이</td><td><form:input  path="writer"/></td></tr>
            <tr><td>내용</td><td><form:textarea cols="50" rows="5" path="content"></form:textarea></td></tr>
        </table>
        <button type="submit">수정하기</button>
        <button type="button" onclick="history.back()">취소하기</button>
    </form:form>

</body>
</html>
