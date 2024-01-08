<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
    <head>

        <link rel="stylesheet" type="text/css" href="/resources/css/style.css">

        <%--        import Bootstrap--%>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">

    </head>
    <body>
        <div class="container justify-content-center align-items-center">
            <h1>Employee Register Form </h1>
            <br>
            <form:form class="row g-3" action="processForm" modelAttribute= "userModel">
                <div class="col-md-6">
                    <form:label path="username" class="form-label">Username</form:label>
                    <form:input type="text" class="form-control"  path="username"/>
                    <br>
                </div>
                <div class="col-md-6">
                    <form:label path="Email" class="form-label">Email address</form:label>
                    <form:input type="text" class="form-control"  path="email"/>
                </div>
                <div class="col-md-6">
                    <form:label path="password" class="form-label">Password</form:label>
                    <form:input type="password" class="form-control"  path="password"/>
                </div>
                <div class="col-md-6">
                    <form:label path="password" class="form-label">Confirm Password</form:label>
                    <form:input type="password" class="form-control"  path="password"/>
                </div>
                <div style = "margin-top: .5cm;" class="col-12">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </form:form>
        </div>
    </body>
</html>
