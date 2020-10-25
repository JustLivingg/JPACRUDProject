<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NBA TEAM MAKER</title>
</head>
<body>

	<h1>Welcome to the NBA.</h1>


	<h3>Search by Team Id</h3>
	<form action="getTeam.do" method="GET">
		Team Id: <input type="text" name="tid" /> <input type="submit"
			value="Show Team" />
	</form>
	
	
	<h3>Click to create a new NBA Team</h3>
	<form action="createTeamForm.do" method="GET">
	<button type="submit">Create NBA Team</button>
	</form>


<%-- 	<c:forEach items="${teams }" var="t">
		<a href="getTeam.do?tid=${t.id }">${t.name}</a>
		<br>
	</c:forEach>
 --%>

</body>
</html>