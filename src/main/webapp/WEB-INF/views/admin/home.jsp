<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard - Daki Book Store</title>
</head>
<body>
<div class="page-wrapper">
    <div class="content container-fluid">

        <!-- Page Header -->
        <div class="page-header">
            <div class="row">
                <div class="col-12">
                    <h3 class="page-title">Xin Chào Admin!</h3>
                </div>
            </div>
        </div>
        <!-- /Page Header -->

        <div class="row">
            <div class="col-xl-3 col-sm-6 col-12">
                <div class="card">
                    <div class="card-body">
                        <div class="dash-widget-header">
									<span class="dash-widget-icon bg-primary">
										<i class="far fa-user"></i>
									</span>
                            <div class="dash-widget-info">
                                <h3>${totalUser}</h3>
                                <h6 class="text-muted">Tổng khách hàng</h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-sm-6 col-12">
                <div class="card">
                    <div class="card-body">
                        <div class="dash-widget-header">
									<span class="dash-widget-icon bg-primary">
										<i class="fas fa-user-shield"></i>
									</span>
                            <div class="dash-widget-info">
                                <h3>${totalOrder}</h3>
                                <h6 class="text-muted">Tổng đơn hàng</h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-sm-6 col-12">
                <div class="card">
                    <div class="card-body">
                        <div class="dash-widget-header">
									<span class="dash-widget-icon bg-primary">
										<i class="fas fa-qrcode"></i>
									</span>
                            <div class="dash-widget-info">
                                <h3>${totalBook}</h3>
                                <h6 class="text-muted">Tổng số sách</h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-sm-6 col-12">
                <div class="card">
                    <div class="card-body">
                        <div class="dash-widget-header">
									<span class="dash-widget-icon bg-primary">
										<i class="far fa-credit-card"></i>
									</span>
                            <div class="dash-widget-info">
                                <h3>${format}</h3>
                                <h6 class="text-muted">Tổng doanh thu</h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /Recent Bookings -->
</div>
</body>

</html>