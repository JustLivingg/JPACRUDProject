<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NBA TEAM MAKER</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
</head>
<body>

	<div class="container-fluid">
		<h1>Welcome to the NBA.</h1>

		<p>There are currently 30 teams in the Nba, 15 Eastern Conference
			teams and 15 Western Conference teams. The two teams with the highest
			championships are the Lakers and Celtics tied at 17.
		<h3>Search by Team Id</h3>
		<form action="getTeam.do" method="GET">
			Team Id: <input type="text" name="tid" /> <input type="submit"
				value="Show Team" />
		</form>
		<br> <br>
		<h3>Click to create a new NBA Team</h3>
		<form action="createTeamForm.do" method="GET">
			<button type="submit">Create NBA Team</button>
		</form>

	</div>

	<%-- 	<c:forEach items="${teams }" var="t">
		<a href="getTeam.do?tid=${t.id }">${t.name}</a>
		<br>
	</c:forEach>
 --%>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"
		integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s"
		crossorigin="anonymous"></script>
</body>
</html>