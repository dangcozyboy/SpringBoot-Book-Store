<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang Chủ</title>
	<!-- Favicons -->

	<link rel="icon" type="image/x-icon" href="/DakiBookStore_war_exploded/SingleProduct/LogoDakiBook/DAKI_BOOK.png">

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="<c:url value='/template/admin/plugins/bootstrap/css/bootstrap.min.css'/>">

	<!-- Fontawesome CSS -->
	<link rel="stylesheet" href="<c:url value='/template/admin/plugins/fontawesome/css/fontawesome.min.css'/>">
	<link rel="stylesheet" href="<c:url value='/template/admin/plugins/fontawesome/css/all.min.css'/>">
	<link rel="stylesheet" href="<c:url value='/template/admin/plugins/fullcalendar/fullcalendar.min.css'/>">
	<link rel="stylesheet" href="<c:url value='/template/admin/plugins/datatables/datatables.min.css'/>">

	<!-- Animate CSS -->
	<link rel="stylesheet" href="<c:url value='/template/admin/css/animate.min.css'/>">

	<link rel="stylesheet" href="<c:url value='/template/admin/css/select2.min.css'/>">
	<!-- Main CSS -->
	<link rel="stylesheet" href="<c:url value='/template/admin/css/admin.css'/>">

</head>
<body>
<div class="main-wrapper">
	<%@ include file="/common/admin/header.jsp"%>
	<dec:body/>
</div>
<!-- jQuery -->
<script src="<c:url value='/template/admin/js/jquery-3.5.0.min.js'/>"></script>

<script src="<c:url value='/template/admin/js/popper.min.js'/>"></script>
<script src="<c:url value='/template/admin/plugins/bootstrap/js/bootstrap.min.js'/>"></script>
<script src="<c:url value='/template/admin/plugins/slimscroll/jquery.slimscroll.min.js'/>"></script>
<script src="<c:url value='/template/admin/js/admin.js'/>"></script>

<script src="<c:url value='/template/admin/plugins/datatables/datatables.min.js'/>"></script>
<script src="<c:url value='/template/admin/js/bootstrap-datetimepicker.min.js'/>"></script>
<script src="<c:url value='/template/admin/js/moment.min.js'/>"></script>
</body>
</html>