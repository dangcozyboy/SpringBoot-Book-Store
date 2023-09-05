
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<html>
<head>
    <title>Payment successfully</title>
</head>
<body>

<div class="space-bottom-2 space-bottom-md-3" style="margin-top: 15%;">
    <div class="text-center mb-5">
        <h5 class="font-size-7 font-weight-medium">Order #${txnRef} has been successfully paid </h5>
        <i class="fas fa-check-circle"></i>
        <p class="text-gray-700">Waiting for shipping</p>
    </div>
    <!-- Form Group -->
    <div class="form-row justify-content-center">
        <div>
            <button type="submit" class="btn btn-dark rounded-0 btn-wide py-3 font-weight-medium" onclick="window.location.href='<c:url value='/user/order' />'">
                My order
            </button>
        </div>
    </div>
    <!-- End Form Group -->
</div>
</body>
</html>
