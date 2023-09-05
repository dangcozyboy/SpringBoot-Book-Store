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
<div class="container">
    <!-- <h1 class="form-heading">login Form</h1> -->
    <div class="login-form">
        <div class="main-div">
            <c:if test="${not empty check}">
                <div class="alert alert-danger">
                        ${check}
                </div>
            </c:if>
            <form action="<c:url value='/register'/>" method="post" modelAttribute=("accountDTO")>
                <div class="form-group">
                    <input type="text" class="form-control" id="userName" name="username" value="" placeholder="Tên đăng nhập" pattern="^[a-zA-Z0-9_]{4,16}$" required>
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" id="password" value="" name="password" placeholder="Mật khẩu" required>
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" id="repeatpassword" value="" name="repeatPassword" placeholder="Nhập lại mất khẩu" required>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" id="email" value="" name="email" placeholder="Email" pattern="^[\w.-]+@([\w-]+\.)+[\w]{2,4}$" required>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" id="fullname" value="" name="fullname" placeholder="Họ và tên" pattern="^[\p{L}]{2,}(?: [\p{L}]+){0,2}$" required>
                </div>
                <button type="submit" class="btn btn-block py-3 rounded-0 btn-dark">Đăng ký</button>
                <div class="register-account">
                    <a href="<c:url value="/login"/>">Already account? Click here to login</a>
                </div>
            </form>
        </div>
    </div>

</div>
</body>
</html>