<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Team</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
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
	
		<h2>Search by Team Id</h2>
		<form action="getTeam.do" method="GET">
			Team Id: <input type="text" name="tid" /> <input type="submit"
				value="Show Team" />
		</form>
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
	
	<form action="/">
			<button type="submit">Return to Home Page</button>
		</form>


</body>
</html>