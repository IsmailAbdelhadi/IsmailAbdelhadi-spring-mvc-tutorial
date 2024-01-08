<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">

        <%--        import Bootstrap--%>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">

    </head>
    <body>
        <div class="container justify-content-center align-items-center">
            <h1>Employee Register Form:</h1>
            <form:form class="row g-3" action="processForm" modelAttribute= "userModel">
                <div class="col-md-6">
                    <form:label  path="firstname" class="form-label">First Name</form:label>
                    <form:input type="text" class="form-control"  path="firstname"/>
                </div>
                <div class="col-md-6">
                    <form:label path="lastname" class="form-label">Last Name</form:label>
                    <form:input type="text" class="form-control"  path="lastname"/>
                </div>
                <div class="col-md-6">
                    <form:label path="username" class="form-label">User Name</form:label>
                    <form:input type="text" class="form-control"  path="username"/>
                </div>
                <div class="col-md-6">
                    <form:label path="password" class="form-label">Password</form:label>
                    <form:input type="password" class="form-control"  path="password"/>
                </div>
                    <div class="col-md-6">
                        <form:label path="address" class="form-label">Address</form:label>
                        <form:input type="text" class="form-control"  path="address"/>
                    </div>
                    <div class="col-md-6">
                        <form:label path="contact_no" class="form-label">Contact No</form:label>
                        <form:input type="text" class="form-control"  path="contact_no"/>
                    </div>
                <div style = "margin-top: .5cm;" class="col-12">
                    <button type="submit" class="btn btn-primary">Sign in</button>
                </div>
            </form:form>
        </div>
    </body>
</html>

