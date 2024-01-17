<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>" >
    <style>

        .error
        {
            color: red;
        }

        h1 {

        color: red;
        }

        body {
            background-color: #f8f9fa;
        }

        .container {
            margin-top: 50px;
        }

        .card {
            background-color: #fff;
            border-radius: 15px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }

        h1 {
            text-align: center;
            color: #007bff;
            margin-bottom: 30px;
        }

        .form-label {
            font-weight: bold;
        }

        .error {
            color: #dc3545;
            margin-top: 5px;
        }

        .form-control {
            border-radius: 15px;
            padding: 15px;
            margin-bottom: 15px;
        }

        button {
            border-radius: 15px;
            padding: 10px 20px;
            font-size: 18px;
            background-color: #007bff;
            color: #fff;
            border: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="card">
            <h1>Employee Register Form</h1>
            <form:form class="row g-3" action="processForm" modelAttribute="userModel">
                <div class="col-12">
                    <label for="username" class="form-label">Username</label>
                    <form:input type="text" class="form-control" path="username" placeholder="Enter Your Username"/>
                    <form:errors path="username" cssClass="error"/>
                </div>
                <div class="col-12">
                    <label for="email" class="form-label">Email address</label>
                    <form:input type="text" class="form-control" path="email" placeholder="Enter Your Email"/>
                    <form:errors path="email" cssClass="error"/>
                </div>
                <div class="col-12">
                    <label for="password" class="form-label">Password</label>
                    <form:input type="password" class="form-control" path="password" placeholder="Enter Your password"/>
                    <form:errors path="password" cssClass="error"/>
                </div>
                <div class="col-12">
                    <label for="confirmPassword" class="form-label">Confirm Password</label>
                    <form:input type="password" class="form-control" path="confirmPassword" placeholder="Confirm Password"/>
                    <form:errors path="confirmPassword" cssClass="error"/>
                </div>
                <div class="col-12">
                    <input type="submit" class="btn btn-primary"/>
                </div>
            </form:form>
        </div>
    </div>
</body>
</html>
