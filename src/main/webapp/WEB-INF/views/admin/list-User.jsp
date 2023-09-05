<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quản Lý Người Dùng</title>
</head>
<body>
<div class="page-wrapper">
    <div class="content container-fluid">

        <!-- Page Header -->
        <div class="page-header">
            <div class="row">
                <div class="col">
                    <h3 class="page-title">Tài Khoản Người Dùng</h3>
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
                                <label>Name</label>
                                <input class="form-control" type="text">
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-3">
                            <div class="form-group">
                                <label>From Date</label>
                                <div class="cal-icon">
                                    <input class="form-control datetimepicker" type="text">
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-3">
                            <div class="form-group">
                                <label>To Date</label>
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

        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-hover table-center mb-0">
                                <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>Tên Người Dùng</th>
                                    <th>Tài Khoản</th>
                                    <th>Giới Tính</th>
                                    <th>Địa Chỉ</th>
                                    <th>Quyền truy cập</th>
                                    <th class="text-right">Cấp quyền truy cập</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${listAccount.content}" var="account">
                                    <tr>
                                        <td>${account.id}</td>
                                        <td>${account.name}</td>
                                        <td>${account.username}</td>
                                        <td>${account.sex}</td>
                                        <td>${account.informationAccount.address}</td>
                                        <td>
                                            <c:forEach items="${account.roles}" var="role">
                                                ${role.role}
                                                <br/>
                                            </c:forEach>
                                        </td>

                                        <td class="text-right">
                                            <a href="edit-user.html" class="btn btn-sm bg-success-light mr-2">
                                                <i class="far fa-edit mr-1"></i>Chỉnh sửa
                                            </a>
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
            <ul class="pagination float-right">
                <li class="page-item"><a class="page-link"
                                         href="/DakiBookStore_war_exploded/admin/list-user?p=0">First</a></li>
                <li class="page-item"><a class="page-link"
                                         href="/DakiBookStore_war_exploded/admin/list-user?p=${listAccount.number - 1}">Previous</a>
                </li>
                <li class="page-item" aria-current="page">
                    <a class="page-link" href="/DakiBookStore_war_exploded/admin/list-user?p=${listAccount.number + 1}">Next</a>
                </li>
                <li class="page-item">
                    <a class="page-link"
                       href="/DakiBookStore_war_exploded/admin/list-user?p=${listAccount.totalPages - 1}">Last</a>
                </li>
            </ul>
        </nav>


    </div>
</div>
</body>
</html>
