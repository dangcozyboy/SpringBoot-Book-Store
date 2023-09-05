<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Category</title>
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
                    <a href="add-subcategory.html" class="btn btn-primary add-button ml-3">
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
                            <div id="DataTables_Table_0_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
                                <div class="row">
                                    <div class="col-sm-12 col-md-6">
                                        <div class="dataTables_length" id="DataTables_Table_0_length"><label>Show
                                            <select name="DataTables_Table_0_length" aria-controls="DataTables_Table_0"
                                                    class="custom-select custom-select-sm form-control form-control-sm">
                                                <option value="10">10</option>
                                                <option value="25">25</option>
                                                <option value="50">50</option>
                                                <option value="100">100</option>
                                            </select> entries</label></div>
                                    </div>
                                    <div class="col-sm-12 col-md-6"></div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table class="table table-hover table-center mb-0 datatable dataTable no-footer"
                                               id="DataTables_Table_0" role="grid"
                                               aria-describedby="DataTables_Table_0_info">
                                            <thead>
                                            <tr role="row">
                                                <%--                                                <th class="sorting_asc" tabindex="0" aria-controls="DataTables_Table_0"--%>
                                                <%--                                                    rowspan="1" colspan="1" aria-sort="ascending"--%>
                                                <%--                                                    aria-label="#: activate to sort column descending"--%>
                                                <%--                                                    style="width: 12.6px;">#--%>
                                                <%--                                                </th>--%>
                                                <%--                                                <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0"--%>
                                                <%--                                                    rowspan="1" colspan="1"--%>
                                                <%--                                                    aria-label="Service: activate to sort column ascending"--%>
                                                <%--                                                    style="width: 292.538px;">Service--%>
                                                <%--                                                </th>--%>
                                                <%--                                                <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0"--%>
                                                <%--                                                    rowspan="1" colspan="1"--%>
                                                <%--                                                    aria-label="Location: activate to sort column ascending"--%>
                                                <%--                                                    style="width: 153.962px;">Location--%>
                                                <%--                                                </th>--%>
                                                <%--                                                <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0"--%>
                                                <%--                                                    rowspan="1" colspan="1"--%>
                                                <%--                                                    aria-label="Category: activate to sort column ascending"--%>
                                                <%--                                                    style="width: 77.4625px;">Category--%>
                                                <%--                                                </th>--%>
                                                <%--                                                <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0"--%>
                                                <%--                                                    rowspan="1" colspan="1"--%>
                                                <%--                                                    aria-label="Amount: activate to sort column ascending"--%>
                                                <%--                                                    style="width: 61.075px;">Amount--%>
                                                <%--                                                </th>--%>
                                                <%--                                                <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0"--%>
                                                <%--                                                    rowspan="1" colspan="1"--%>
                                                <%--                                                    aria-label="Date: activate to sort column ascending"--%>
                                                <%--                                                    style="width: 71.1375px;">Date--%>
                                                <%--                                                </th>--%>
                                                <%--                                                <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0"--%>
                                                <%--                                                    rowspan="1" colspan="1"--%>
                                                <%--                                                    aria-label="Status: activate to sort column ascending"--%>
                                                <%--                                                    style="width: 48.4125px;">Status--%>
                                                <%--                                                </th>--%>
                                                <%--                                                <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0"--%>
                                                <%--                                                    rowspan="1" colspan="1"--%>
                                                <%--                                                    aria-label="Action: activate to sort column ascending"--%>
                                                <%--                                                    style="width: 58.0125px;">Action--%>
                                                <%--                                                </th>--%>
                                                <th>STT</th>
                                                <th>Thể loại</th>
                                                <th class="text-right">Cập nhật</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${List_category_paging.content}" var="category">
                                            <tr>
                                                <td>1</td>
                                                <td>${category.category}</td>
                                                <td class="text-right">
                                                    <a href="edit-subcategory.html"
                                                       class="btn btn-sm bg-success-light mr-2">
                                                        <i class="far fa-edit mr-1"></i>Edit
                                                    </a>
                                                </td>
                                            </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-md-5">
                                        <div class="dataTables_info" id="DataTables_Table_0_info" role="status"
                                             aria-live="polite">Showing 1 to 10 of 12 entries
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-7">
                                        <div class="dataTables_paginate paging_simple_numbers"
                                             id="DataTables_Table_0_paginate">
                                            <ul class="pagination">
                                                <li class="paginate_button page-item previous disabled"
                                                    id="DataTables_Table_0_previous"><a href="/DakiBookStore_war_exploded/admin/viewCategory?p=0"
                                                                                        aria-controls="DataTables_Table_0"
                                                                                        data-dt-idx="0" tabindex="0"
                                                                                        class="page-link">First</a>
                                                </li>
                                                <li class="paginate_button page-item active"><a href="/DakiBookStore_war_exploded/admin/viewCategory?p=${List_category_paging.number - 1}"
                                                                                                aria-controls="DataTables_Table_0"
                                                                                                data-dt-idx="1"
                                                                                                tabindex="0"
                                                                                                class="page-link">Previous</a>
                                                </li>
                                                <li class="paginate_button page-item "><a href="/DakiBookStore_war_exploded/admin/viewCategory?p=${List_category_paging.number + 1}"
                                                                                          aria-controls="DataTables_Table_0"
                                                                                          data-dt-idx="2" tabindex="0"
                                                                                          class="page-link">Next</a></li>
                                                <li class="paginate_button page-item next" id="DataTables_Table_0_next">
                                                    <a href="/DakiBookStore_war_exploded/user/ShopListPaging?p=${List_book_paging.totalPages - 1}" aria-controls="DataTables_Table_0" data-dt-idx="3"
                                                       tabindex="0" class="page-link">Last</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
