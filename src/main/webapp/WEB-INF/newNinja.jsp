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
<title>New Ninja</title>
</head>
<body>
	<div class="m-5">
		<div class="d-flex justify-content-between mb-2">
			<h1>New Ninja</h1>
			<a href="/dojos">Dashboard</a>
		</div>
		<form:form action="/ninjas/add" method="post" modelAttribute="ninja">
			<form:label for="dojo" path="dojo">Select Dojo:</form:label>
			<form:select path="dojo">
				<c:forEach items="${dojos}" var="oneDojo">
					<form:option value="${oneDojo.id}">
						${oneDojo.name}
					</form:option>
				</c:forEach>
			</form:select>
			<div class="my-2">
				<form:label for="firstName" path="firstName">First Name:</form:label>
				<form:input type="text" path="firstName" name="firstName"/>
				<form:errors path="firstName" class="text-danger d-block"></form:errors>
			</div>
			<div class="mb-2">
				<form:label for="lastName" path="lastName">Last Name:</form:label>
				<form:input type="text" path="lastName" name="lastName"/>
				<form:errors path="lastName" class="text-danger d-block"></form:errors>
			</div>
			<div class="mb-3">
				<form:label for="age" path="age" class="me-5">Age:</form:label>
				<form:input type="number" path="age" name="age"/>
				<form:errors path="age" class="text-danger d-block"></form:errors>
			</div>
			<input type="submit" class="btn btn-primary" value="Create"/>
		</form:form>
	</div>
</body>
</html>