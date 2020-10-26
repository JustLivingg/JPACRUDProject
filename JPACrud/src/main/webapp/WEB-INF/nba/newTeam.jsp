<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Team</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
</head>

<br>
<body>

	<h1>Create Your Team</h1>

	<form:form action="createTeam.do" method="POST"
		modelAttribute="nbateam">
		<div>
			<form:label path="name">Team Name: </form:label>
			<form:input type="text" class="form-control" required="required"
				path="name" placeholder="Team Name" />
		</div>
		<div>
			<form:label path="city">City: </form:label>
			<form:input type="text" class="form-control" required="required"
				path="city" placeholder="City" />
		</div>
		<div>
			<form:label path="coach">Coach: </form:label>
			<form:input type="text" class="form-control" required="required"
				path="coach" placeholder="Coach" />
		</div>
		<div>
			<form:label path="conference">Conference(Eastern or Western): </form:label>
			<form:input type="text" class="form-control" required="required"
				path="conference" placeholder="Conference" />
		</div>
		<div>
			<form:label path="yearFounded">Year Founded: </form:label>
			<form:input type="text" class="form-control" 
				path="yearFounded" placeholder="Year Founded" />
		</div>
		<div>
			<form:label path="teamGoat">Team GOAT: </form:label>
			<form:input type="text" class="form-control" required="required"
				path="teamGoat" placeholder="Team GOAT" />
		</div>

		<button type="submit">Submit</button>



	</form:form>
</body>
</html>