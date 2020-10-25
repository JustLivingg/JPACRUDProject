<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Team</title>
</head>
<body>

	<h1>Create Your Team</h1>

	<form:form action="createTeam.do" method="POST"
		modelAttrinute="Nbateam">
		<div>
			<form:label path="name">Team Name: </form:label>
			<form:input path="text" class="form-control" required="required"
				path="name" placeholder="Team Name" />
		</div>
		<div>
			<form:label path="city">City: </form:label>
			<form:input path="text" class="form-control" required="required"
				path="city" placeholder="City" />
		</div>
		<div>
			<form:label path="coach">Coach: </form:label>
			<form:input path="text" class="form-control" required="required"
				path="coach" placeholder="Coach" />
		</div>
		<div>
			<form:label path="conference">Conference(Eastern or Western): </form:label>
			<form:input path="text" class="form-control" required="required"
				path="conference" placeholder="Conference" />
		</div>
		<div>
			<form:label path="yearFounded">Year Founded: </form:label>
			<form:input path="text" class="form-control" required="required"
				path="yearFounded" placeholder="Year Founded" />
		</div>
		<div>
			<form:label path="teamGoat">Team GOAT: </form:label>
			<form:input path="text" class="form-control" required="required"
				path="teamGoat" placeholder="Team GOAT" />
		</div>

		<button type="submit" class="btn btn-success">Submit</button>



	</form:form>
</body>
</html>