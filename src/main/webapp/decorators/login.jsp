<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Title -->
    <title>Login</title>

    <!-- Required Meta Tags Always Come First -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="/DakiBookStore_war_exploded/SingleProduct/LogoDakiBook/DAKI_BOOK.png">
    <%--    <link rel="shortcut icon" href="../../assets/img/favicon.png">--%>

    <!-- Font -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700&display=swap" rel="stylesheet">


    <link href="<c:url value='/template/user/css/login.css'/>" rel="stylesheet" type="text/css">
    <link href="<c:url value='/template/user/vendor/font-awesome/css/fontawesome-all.min.css'/>" rel="stylesheet" type="text/css">
    <link href="<c:url value='/template/user/vendor/flaticon/font/flaticon.css'/>" rel="stylesheet" type="text/css">
    <link href="<c:url value='/template/user/vendor/animate.css/animate.css'/>" rel="stylesheet" type="text/css">
    <link href="<c:url value='/template/user/vendor/bootstrap-select/dist/css/bootstrap-select.min.css'/>" rel="stylesheet" type="text/css">
    <link href="<c:url value='/template/user/vendor/slick-carousel/slick/slick.css'/>" rel="stylesheet" type="text/css">
    <link href="<c:url value='/template/user/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.css'/>" rel="stylesheet" type="text/css">
    <link href="<c:url value='/template/user/css/theme.css'/>" rel="stylesheet" type="text/css">
    <style>
        html, body {
            height: 100%;
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .container {
            width: 400px;
            padding: 20px;
            border: 1px solid #ccc;
            background-color: #f1f1f1;
        }

        .login-form {
            text-align: center;
        }

        .form-group {
            margin-bottom: 10px;
        }

        .forgot-password,
        .register-account {
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <dec:body/>
</body>
</html>
