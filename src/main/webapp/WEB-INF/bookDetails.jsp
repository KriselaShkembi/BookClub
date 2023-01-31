<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Read Share</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<a href="/books">Back to the shelves.</a>
<br>
<h1>${book.title}</h1>
<br>
<p>${book.user.username} read ${book.title} by ${book.authorName}.</p>
<p>Here are ${book.user.username}'s thoughts: </p>
<p>${book.thoughts}</p>

<br>
<c:if test="${book.user.equals(user)}">
    <a href="/books/${book.id}/edit">Edit</a>
    <form:form action="/books/${book.id}/delete" method="delete">
        <button class="btn btn-danger">Delete</button>
    </form:form>

</c:if>
</body>
</html>