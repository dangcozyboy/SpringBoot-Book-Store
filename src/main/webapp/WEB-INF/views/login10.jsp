<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Login</title>
</head>
<body>

<form class="login-form">
    <!-- Login -->
    <div id="login1" data-target-group="idForm1">
        <!-- Title -->
        <header class="border-bottom px-4 px-md-6 py-4">
            <h2 class="font-size-3 mb-0 d-flex align-items-center"><i
                    class="flaticon-user mr-3 font-size-5"></i>Account</h2>
        </header>
        <div class="p-4 p-md-6">
            <%--                        <form method="POST" action="/j_spring_security_check">--%>
            <c:if test="${param.incorrectAccount != null}">
                <div class="alert alert-danger" role="alert">Incorrect info</div>
            </c:if>
            <!-- Form Group -->
            <form method="POST" action="/j_spring_security_check">
                <div class="form-group mb-4">
                    <label id="signinEmailLabel9" class="form-label" for="signinEmail9">Username or email *</label>
                    <input type="text" class="form-control rounded-0 height-4 px-4" name="j_username"
                           id="signinEmail9" placeholder="creativelayers088@gmail.com">
                </div>
                <div class="form-group mb-4">
                    <label id="signinPasswordLabel9" class="form-label" for="signinPassword9">Password
                        *</label>
                    <input type="password" class="form-control rounded-0 height-4 px-4" name="j_password"
                           id="signinPassword9" placeholder="" aria-label=""
                           aria-describedby="signinPasswordLabel9" required>
                </div>
                <div class="mb-4d75">
                    <button type="submit" class="btn btn-block py-3 rounded-0 btn-dark">Sign In</button>
                </div>
            </form>
            <%--                        </form>--%>
        </div>
    </div>
</form>
</body>
</html>
