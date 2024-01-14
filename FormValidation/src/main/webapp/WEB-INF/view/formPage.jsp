<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>" >
    <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>" >
</head>
<body>
    <div class="container">
        <div class="card">
            <h1>Register</h1>
            <form:form class="row g-3" action="processForm" modelAttribute="userModel">
                <div class="col-12">
                    <form:label path="username" class="form-label">Username</form:label>
                    <form:input type="text" class="form-control" path="username"/>
                    <form:errors path="username" cssClass="error"/>
                </div>
                <div class="col-12">
                    <form:label path="email" class="form-label">Email</form:label>
                    <form:input type="text" class="form-control" path="email"/>
                    <form:errors path="email" cssClass="error"/>
                </div>
                <div class="col-12">
                    <form:label path="password" class="form-label">Password</form:label>
                    <form:input type="password" class="form-control" path="password"/>
                    <form:errors path="password" cssClass="error"/>
                </div>
                <div class="col-12">
                    <form:label path="confirmPassword" class="form-label">Confirm Password</form:label>
                    <form:input type="password" class="form-control" path="confirmPassword"/>
                    <form:errors path="confirmPassword" cssClass="error"/>
                </div>
                <div class="col-12 text-center">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </form:form>
        </div>
    </div>
</body>
</html>
