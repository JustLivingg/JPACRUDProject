<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Team</title>
</head>

<body>

	<h3>Team Info:</h3>
	<h3>${result}</h3>
	<c:choose>
		<c:when test="${! empty team}">
			<ul>
				<li><strong>Team Id: </strong>${team.id}</li>
				<li><strong>Team Name: </strong>${team.name}</li>
				<li><strong>City: </strong>${team.city}</li>
				<li><strong>Championships Won: </strong>${team.championships}</li>
				<li><strong>Coach: </strong>${team.coach}</li>
				<li><strong>Conference: </strong>${team.conference}</li>
				<li><strong>Year Founded: </strong>${team.yearFounded}</li>
				<li><strong>Teams Greatest Player Of All Time: </strong>${team.teamGoat}</li>
			</ul>
		</c:when>
		<c:otherwise>
		<p>No team found with that Id.</p>
		</c:otherwise>
	</c:choose> 
	
		<br>
	<form action="deleteTeam.do" method="GET">
		<strong>Delete this team:</strong><br> 
		<input type="radio" name="id" value="${team.id}"/> 
		<input type="submit" value="Delete" />
	</form>
	<br>
	<form action="updateTeamForm.do" method="GET">
		<strong>Update this team:</strong><br> 
		<input type="radio" name="id" value="${team.id}"/> 
		<input type="submit" value="Update" />
	</form>
	<br>
	


	

</body>
</html>