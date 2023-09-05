<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quản Lý Tác Giả</title>
</head>
<body>
<div class="page-wrapper">
    <div class="content container-fluid">

        <!-- Page Header -->
        <div class="page-header">
            <div class="row">
                <div class="col">
                    <h3 class="page-title">Thông Tin Tác Giả</h3>
                </div>
                <div class="col-auto text-right">
                    <a class="btn btn-white filter-btn" href="javascript:void(0);" id="filter_search">
                        <i class="fas fa-filter"></i>
                    </a>

                    <a href="add-author.html" class="btn btn-primary add-button ml-3">
                        <i class="fas fa-plus"></i>
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
                                    <th>Tên Tác Giả</th>
                                    <th>Quốc Gia</th>
                                    <th class="text-right">Cập nhật</th>

                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${authorList.content}" var="authors">
                                    <tr>
                                        <td>${authors.id}</td>
                                        <td>${authors.name}</td>
                                        <td>${authors.address}</td>
                                        <td class="text-right">
                                            <a href="edit-author.html" class="btn btn-sm bg-success-light mr-2">
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
        <nav aria-label="...">
            <ul class="pagination float-right">
                <li class="page-item"><a class="page-link"
                                         href="/DakiBookStore_war_exploded/admin/list-author?p=0">First</a></li>
                <li class="page-item"><a class="page-link"
                                         href="/DakiBookStore_war_exploded/admin/list-author?p=${authorList.number - 1}">Previous</a>
                </li>
                <li class="page-item" aria-current="page">
                    <a class="page-link" href="/DakiBookStore_war_exploded/admin/list-author?p=${authorList.number + 1}">Next</a>
                </li>
                <li class="page-item">
                    <a class="page-link"
                       href="/DakiBookStore_war_exploded/admin/list-author?p=${authorList.totalPages - 1}">Last</a>
                </li>
            </ul>
        </nav>
    </div>
</div>
</body>
</html>
