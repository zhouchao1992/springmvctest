<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'userList.jsp' starting page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
        <link rel="stylesheet" type="text/css" href="styles.css">
        -->
</head>

<body>

<form >

    <table border="1" cellpadding="0" cellspacing="0">
        <tr>
            <td>username</td>
            <td>password</td>
            <td>icon</td>
            <td>email</td>
            <td>nickName</td>
            <td>note</td>
            <td>createTime</td>
            <td>loginTime</td>
            <td>status</td>
        </tr>

        <c:forEach items="${list}" var="li">
            <tr>
                <td>${li.username }</td>
                <td>${li.password }</td>
                <td>${li.icon}</td>
                <td>${li.email}</td>
                <td>${li.nickName }</td>
                <td>${li.note }</td>
                <td>${li.createTime}</td>
                <td>${li.loginTime}</td>
                <td>${li.status }</td>
            </tr>
        </c:forEach>
    </table>
</form>
</body>
</html>