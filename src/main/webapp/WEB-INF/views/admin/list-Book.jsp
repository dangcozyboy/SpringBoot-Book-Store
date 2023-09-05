<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp" %>
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
                    <h3 class="page-title">Các Loại Sách</h3>
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
                            <table class="table table-hover table-center mb-0">
                                <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>Tên sách</th>
                                    <th>Tác giả</th>
                                    <th>Thể loại</th>
                                    <th>Kích cỡ</th>
                                    <th>Hình thức bìa</th>
                                    <th>Giá tiền</th>
                                    <th class="text-right">Cập nhật</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${bookList.content}" var="books">
                                    <tr>
                                        <td>${books.id}</td>
                                        <td>
                                            <img class="rounded service-img mr-1"
                                                 src="assets/img/sub-category/sub-category-02.jpg" alt="">${books.name}
                                        </td>
                                        <td>${books.author.name}</td>
                                        <td>${books.category.category}</td>
                                        <td>${books.bookDetails.size}</td>
                                        <td>${books.bookDetails.book_Cover}</td>
                                        <td>${books.formatVND(books.price)}</td>
                                        <td class="text-right">
                                            <a href="<c:url value="/admin/update-book/${books.id}"/>"
                                               class="btn btn-sm bg-success-light mr-2">
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

                <nav aria-label="...">
                    <ul class="pagination float-right">
                        <li class="page-item disabled">
                            <a class="page-link" href="/DakiBookStore_war_exploded/admin/list-book?p=0" tabindex="-1" aria-disabled="true">First</a>
                        </li>
                        <li class="page-item"><a class="page-link" href="/DakiBookStore_war_exploded/admin/list-book?p=${bookList.number - 1}">Previous</a></li>
                        <li class="page-item active">
                            <a class="page-link" href="/DakiBookStore_war_exploded/admin/list-book?p=${bookList.number + 1}">Next</a>
                        </li>
                        <li class="page-item"><a class="page-link" href="/DakiBookStore_war_exploded/admin/list-book?p=${bookList.totalPages - 1}">Last</a></li>
                    </ul>
                </nav>

            </div>
        </div>
    </div>
</div>
</body>
</html>
