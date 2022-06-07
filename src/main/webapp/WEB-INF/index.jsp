<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="js/app.js"></script>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/style.css"/>
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Dojos</title>
</head>
<body>
	<div class="m-5">
		<div class="d-flex justify-content-between">
			<h1>New Dojo</h1>
			<a href="/ninjas/create">Register a New Ninja</a>
		</div>
		<div>
			<form:form action="/dojos/add" method="post" modelAttribute="dojo" class="my-3">
				<div class="mb-2">
					<form:label for="name" path="name">Location:</form:label>
					<form:input type="text" path="name" name="name"/>
				</div>
				<form:errors path="name" class="text-danger d-block mb-2"></form:errors>
				<input type="submit" class="btn btn-primary" value="Create"/>
			</form:form>
		</div>
		<table class="table table-striped table-bordered">
			<thead>
				<tr>
					<th>Location</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${dojos}" var="oneDojo">
					<tr>
						<td>${oneDojo.name}</td>
						<td><a href="/dojos/${oneDojo.id}">See Students</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>