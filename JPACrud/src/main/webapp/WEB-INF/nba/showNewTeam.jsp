<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Showing New Team</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
</head>

<body>

	<h3>New Team Info:</h3>

	<c:choose>
		<c:when test="${! empty newTeam}">
			<ul>
				<li><strong>Team Id:</strong> ${newTeam.id}</li>
				<li><strong>Name:</strong> ${newTeam.name}</li>
				<li><strong>City:</strong> ${newTeam.city}</li>
				<li><strong>Championships:</strong> ${newTeam.championships}</li>
				<li><strong>Coach:</strong> ${newTeam.coach}</li>
				<li><strong>Conference:</strong> ${newTeam.conference}</li>
				<li><strong>Year Founded:</strong> ${newTeam.yearFounded}</li>
				<li><strong>Team GOAT:</strong> ${newTeam.teamGoat}</li>
			</ul>
		</c:when>
		<c:otherwise>
			<p>No team found with that Id.</p>
		</c:otherwise>
	</c:choose>

	<h2>Search by Team Id</h2>
	<form action="getTeam.do" method="GET">
		Team Id: <input type="text" name="tid" /> <input type="submit"
			value="Show Team" />
	</form>
	<br>
	<br>
	<form action="deleteTeam.do" method="GET">
		<strong>Delete this team:</strong><br> <input type="radio"
			name="id" value="${newTeam.id}" /> <input type="submit"
			value="Delete" />
	</form>

	<br>
	<form action="updateTeamForm.do" method="GET">
		<strong>Update this team:</strong><br> <input type="radio"
			name="id" value="${team.id}" /> <input type="submit" value="Update" />
	</form>


	<br>
	
		<form action="/">
			<button type="submit">Return to Home Page</button>
		</form>
	

</body>
</html>