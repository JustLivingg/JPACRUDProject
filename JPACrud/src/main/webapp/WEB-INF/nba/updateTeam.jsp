<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Form</title>
</head>

<body>

	<form:form action="updateTeam.do" method="POST" modelAttribute="nbateam">
		<div>
			<form:label path="name">Team Name</form:label>
			<form:input type="text" class="form-control" required="required"
				path="name" placeholder="${team.name}" />
		</div>
		<div>
			<form:label path="city">City</form:label>
			<form:input type="text" class="form-control"
				path="city" placeholder="${team.city}" />
		</div>
		<div>
			<form:label path="championships">Championships</form:label>
			<form:input type="text" class="form-control" required="required"
				path="championships" placeholder="${team.championships}" />
		</div>
		<div>
			<form:label path="coach">Coach</form:label>
			<form:input type="text" class="form-control" 
				path="coach" placeholder="${team.coach}" />
		</div>
		<div>
			<form:label path="conference">Conference</form:label>
			<form:input type="text" class="form-control" required="required"
				path="conference" placeholder="${team.conference}" />
		</div>
		<div>
			<form:label path="yearFounded">Year Founded</form:label>
			<form:input type="text" class="form-control" 
				path="yearFounded" placeholder="${team.yearFounded}" />
		</div>
		<div>
			<form:label path="teamGoat">Team GOAT</form:label>
			<form:input type="text" class="form-control" 
				path="teamGoat" placeholder="${team.teamGoat}" />
		</div>
		<input type='hidden' name='id' id="id" value='${team.id}' />
		<button type="submit">Submit</button>


	</form:form>
</body>
</html>