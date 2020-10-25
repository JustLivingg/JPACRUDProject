<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Showing New Team</title>
</head>

<body>

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

	<br>
	<form action="deleteTeam.do" method="GET">
		<strong>Delete this team:</strong><br> 
		<input type="radio" name="id" value="${newTeam.id}"/> 
		<input type="submit" value="Delete" />
	</form>
	<br>


	<br>

</body>
</html>