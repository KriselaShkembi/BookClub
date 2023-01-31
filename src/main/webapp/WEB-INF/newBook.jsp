<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Book Share</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<h1>Add a book to your shelf!</h1>
<a href="/books">Back to the shelves.</a>

<%--@elvariable id="book" type="javax"--%>
<form:form method="post" action="/books/new" modelAttribute="book">

    <p class="form-group">
        <form:label path="title">Title:</form:label>
        <form:input path="title" class="form-control"></form:input>
        <form:errors path="title" class="text-danger"></form:errors>
    </p>
    <p class="form-group">
        <form:label path="authorName">Author:</form:label>
        <form:input path="authorName" class="form-control"></form:input>
        <form:errors path="authorName" class="text-danger"></form:errors>
    </p>
    <p class="form-group">
        <form:label path="thoughts">My thoughts:</form:label>
        <form:input path="thoughts" class="form-control"></form:input>
        <form:errors path="thoughts" class="text-danger"></form:errors>
    </p>
    <button class="btn btn-info">Submit</button>
</form:form>

</body>
</html>