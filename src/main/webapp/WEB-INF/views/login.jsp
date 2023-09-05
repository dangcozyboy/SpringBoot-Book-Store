<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Đăng nhập</title>

</head>
<body>
<div>
    <!-- <h1 class="form-heading">login Form</h1> -->
    <div class="login-form">
        <div class="main-div">
            <c:if test="${param.incorrectAccount != null}">
                <div class="alert alert-danger">
                    Username or password incorrect
                </div>
            </c:if>
            <form action="j_spring_security_check" id="formLogin" method="post">
                <div class="form-group">
                    <input type="text" class="form-control" id="userName" name="j_username" placeholder="Tên đăng nhập">
                </div>

                <div class="form-group">
                    <input type="password" class="form-control" id="password" name="j_password" placeholder="Mật khẩu">
                </div>
                <button type="submit" class="btn btn-block py-3 rounded-0 btn-dark">Đăng nhập</button>
                <div class="forgot-password">
                    <a href="<c:url value="/forgotPassword"/>">Forgot password?</a>
                </div>
                <div class="register-account">
                    <p>Haven't account?</p>
                    <a href="<c:url value="/register"/>">Register now, right here</a>
                </div>
            </form>
        </div>
    </div>

</div>
</body>
</html>