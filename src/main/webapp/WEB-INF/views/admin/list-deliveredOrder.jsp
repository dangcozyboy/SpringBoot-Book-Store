<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
<head>
    <title>Quản lý đơn hàng</title>
</head>
<body>
<div class="page-wrapper">
    <div class="content container-fluid">

        <!-- Page Header -->
        <div class="page-header">
            <div class="row">
                <div class="col">
                    <h3 class="page-title">Danh Sách Đơn Hàng</h3>
                </div>
                <div class="col-auto text-right">
                    <a class="btn btn-white filter-btn mr-3" href="javascript:void(0);" id="filter_search">
                        <i class="fas fa-filter"></i>
                    </a>
                    <a href="<c:url value="/admin/add-book"/>" class="btn btn-primary add-button ml-3">
                        <i class="fas fa-plus"></i>
                    </a>
                </div>
            </div>
        </div>
        <!-- /Page Header -->
        <ul class="nav nav-tabs menu-tabs">
            <li class="nav-item active">
                <a class="nav-link" href="<c:url value="/admin/list-order"/>">Total order<span
                        class="badge badge-primary">${totalOrder}</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<c:url value="/admin/list-pendingOrder"/>">Pending<span
                        class="badge badge-primary">${countPendingOrders}</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<c:url value="/admin/list-shippingOrder"/>">Shipping<span
                        class="badge badge-primary">${countShippingOrders}</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<c:url value="/admin/list-deliveredOrder"/>">Delivered<span
                        class="badge badge-primary">${countDeliveredOrders}</span></a>
            </li>
        </ul>
        <!-- Search Filter -->
        <div class="card filter-card" id="filter_inputs">
            <div class="card-body pb-0">
                <form action="#" method="post">
                    <div class="row filter-row">
                        <div class="col-sm-6 col-md-3">
                            <div class="form-group">
                                <label>Tên sách</label>
                                <input class="form-control" type="text">
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-3">
                            <div class="form-group">
                                <label>Từ</label>
                                <div class="cal-icon">
                                    <input class="form-control datetimepicker" type="text">
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-3">
                            <div class="form-group">
                                <label>Đến</label>
                                <div class="cal-icon">
                                    <input class="form-control datetimepicker" type="text">
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-3">
                            <div class="form-group">
                                <button class="btn btn-primary btn-block" type="submit">Lọc</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!-- /Search Filter -->

        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-center">
                                <thead>
                                <tr>
                                    <th>Customer</th>
                                    <th>Order Date</th>
                                    <th>Shipping Date</th>
                                    <th>Delivery Date</th>
                                    <th>Status</th>
                                    <th>Price</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${orderList}" var="orders">
                                    <tr>
                                        <td class="text-nowrap">
                                                ${orders.account.name}
                                        </td>
                                        <td class="text-nowrap">${fn:substring(orders.orderDate, 0, 10)}</td>
                                        <td>${fn:substring(orders.shipDate, 0, 10)}</td>
                                        <td>${fn:substring(orders.deliveryDate, 0, 10)}</td>
                                        <td>
                                            <c:if test="${orders.orderStatus == 'Pending'}">
                                                <span class="badge bg-warning inv-badge">Pending</span>
                                            </c:if>
                                            <c:if test="${orders.orderStatus == 'Shipping'}">
                                                <span class="badge bg-info inv-badge">Shipping</span>
                                            </c:if>
                                            <c:if test="${orders.orderStatus == 'Delivered'}">
                                                <span class="badge bg-success inv-badge">Delivered</span>
                                            </c:if>
                                        </td>

                                        <td>
                                            <div class="font-weight-600">${orders.formatVND(orders.totalPrice)}</div>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
