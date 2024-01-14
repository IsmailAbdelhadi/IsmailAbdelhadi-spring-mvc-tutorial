<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>" >
    <style>
         body {
                     background-color: #f0f0f0;
                 }

                 .container {
                     margin-top: 50px;
                 }

                 .card {
                     background-color: #4CAF50;
                     border-radius: 15px;
                     box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                     padding: 20px;
                 }

                 h1 {
                     text-align: center;
                     color: #fff;
                     margin-bottom: 20px;
                 }

                 .form-label {
                     font-weight: bold;
                     color: #fff;
                 }

                 .error {
                     color: #dc3545;
                     margin-top: 5px;
                 }

                 .form-control {
                     border-radius: 5px;
                     padding: 8px;
                     margin-bottom: 10px;
                 }

                 button {
                     border-radius: 5px;
                     padding: 10px 15px;
                     font-size: 16px;
                     background-color: #ff8c00; /* Dark Orange */
                     color: #fff;
                     border: none;
                 }
    </style>
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
