<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/14/2023
  Time: 1:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="page-wrapper">
    <div class="content container-fluid">

        <!-- Page Header -->
        <div class="page-header">
            <div class="row">
                <div class="col">
                    <h3 class="page-title">Thể Loại</h3>
                </div>
                <div class="col-auto text-right">
                    <a class="btn btn-white filter-btn" href="javascript:void(0);" id="filter_search">
                        <i class="fas fa-filter"></i>
                    </a>
                    <a href="add-category.html" class="btn btn-primary add-button ml-3">
                        <i class="fas fa-plus"></i>
                    </a>
                </div>
            </div>
        </div>
        <!-- /Page Header -->

        <!-- Search Filter -->
        <div class="card filter-card" id="filter_inputs">
            <div class="card-body pb-0">
                <form action="#" method="post">
                    <div class="row filter-row">
                        <div class="col-sm-6 col-md-3">
                            <div class="form-group">
                                <label>Thể loại</label>
                                <select class="form-control select">
                                </select>
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
                            <table class="table table-hover table-center mb-0">
                                <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>Tên thể loại</th>
                                    <th class="text-right">Cập nhật</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Công Nghệ</td>
                                    <td class="text-right">
                                        <a href="edit-category.html" class="btn btn-sm bg-success-light mr-2"> <i
                                                class="far fa-edit mr-1"></i>Chỉnh sửa</a>
                                    </td>
                                </tr>
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
