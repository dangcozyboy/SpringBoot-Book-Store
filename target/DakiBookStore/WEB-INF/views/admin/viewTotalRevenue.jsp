<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>Thống Kê Doanh Thu</title>
</head>
<body>
<div class="page-wrapper">
  <div class="content container-fluid">

    <!-- Page Header -->
    <div class="page-header">
      <div class="row">
        <div class="col">
          <h3 class="page-title float-right">Thống Kê Doanh Thu</h3>

          <div class="col-xl-3 col-sm-6 col-12">
            <div class="card">
              <div class="card-body">
                <div class="dash-widget-header">
									<span class="dash-widget-icon bg-primary">
										<i class="far fa-credit-card"></i>
									</span>
                  <div class="dash-widget-info">
                    <h6 class="text-muted">Tổng doanh thu</h6>
                    <h3>${totalProfit}</h3>
                  </div>
                </div>
              </div>
            </div>
          </div>

        </div>
        <div class="col-auto text-right">
          <a class="btn btn-white filter-btn" href="javascript:void(0);" id="filter_search">
            <i class="fas fa-filter"></i>
          </a>
        </div>
      </div>
    </div>
    <!-- /Page Header -->

    <!-- Search Filter -->
    <div class="card filter-card" id="filter_inputs">
      <div class="card-body pb-0">
        <form>
          <div class="row filter-row">
            <div class="col-sm-6 col-md-3">
              <div class="form-group">
                <label class="col-form-label">From Date</label>
                <div class="cal-icon">
                  <input class="form-control datetimepicker" type="text">
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-3">
              <div class="form-group">
                <label class="col-form-label">To Date</label>
                <div class="cal-icon">
                  <input class="form-control datetimepicker" type="text">
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-3">
              <div class="form-group">
                <button class="btn btn-primary btn-block" type="submit">Submit</button>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
    <!-- /Search Filter -->

    <ul class="nav nav-tabs menu-tabs">
      <li class="nav-item active">
        <a class="nav-link" href="total-finance.html">Tất cả đơn hàng<span class="badge badge-primary">${totalOrder}</span></a>
      </li>
    </ul>

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
                  <th>Status</th>
                  <th>Price</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${orderList.content}" var="orders">
                  <tr>
                    <td class="text-nowrap">
                        ${orders.account.name}
                    </td>
                    <td class="text-nowrap">${fn:substring(orders.orderDate, 0, 10)}</td>
                    <td>${fn:substring(orders.shipDate, 0, 10)}</td>
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


    <!--				Nút chuyển trang-->
    <nav aria-label="...">
      <ul class="pagination float-right" >
        <li class="page-item"><a class="page-link" href="#">First</a></li>
        <li class="page-item"><a class="page-link" href="#">Previuos</a></li>
        <li class="page-item" aria-current="page">
          <a class="page-link" href="#">Next</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#">Last</a>
        </li>
      </ul>
    </nav>

  </div>
</div>
</body>
</html>
