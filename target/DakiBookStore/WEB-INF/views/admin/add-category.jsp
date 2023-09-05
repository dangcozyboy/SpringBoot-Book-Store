<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<html>
<head>
    <title>Add Category</title>
</head>
<body>
<div class="page-wrapper">
    <div class="content container-fluid">
        <div class="row">
            <div class="col-xl-8 offset-xl-2">

                <!-- Page Header -->
                <div class="page-header">
                    <div class="row">
                        <div class="col">
                            <h3 class="page-title">Thể Loại</h3>
                        </div>
                    </div>
                </div>
                <!-- /Page Header -->

                <div class="card">
                    <div class="card-body">

                        <!-- Form -->
                        <form action="<c:url value='/admin/add-category'/>" method="post" accept-charset="UTF-8">
<%--                            <div class="form-group">--%>
<%--                                <label>ID</label>--%>
<%--                                <input class="form-control" type="text" name="category">--%>
<%--                            </div>--%>
                            <div class="form-group">
                                <label>Tên thể loại</label>
                                <input  class="form-control" style="font-family: Times New Roman;" type="text" name="category" >
                            </div>
                            <!--<div class="form-group">
                                <label>Category Image</label>
                                <input class="form-control" type="file">
                            </div>-->
                            <div class="mt-4">
                                <button class="btn btn-primary" type="submit">Thêm</button>
                                <a href="categories.html" class="btn btn-link">Hủy bỏ</a>
                            </div>
                        </form>
                        <!-- Form -->

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
