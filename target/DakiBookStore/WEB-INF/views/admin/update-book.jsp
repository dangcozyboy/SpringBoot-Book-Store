<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp" %>
<html>
<head>
  <title>Chỉnh sửa sách</title>
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
              <h3 class="page-title">Thêm sách</h3>
            </div>
          </div>
        </div>
        <!-- /Page Header -->

        <div class="card">
          <div class="card-body">
            <!-- Form -->
            <form action="<c:url value='/admin/update-book/${bookDTO.id}'/>" method="post" accept-charset="UTF-8"
                  enctype="multipart/form-data" modelAttribute="bookDTO" modelAttribute="bookDetailDTO">
              <div class="form-group">
                <label>Tên sách</label>
                <input class="form-control" type="text" name="bookName" value="${bookDTO.bookName}">
              </div>
              <div class="form-group">
                <label>Thể loại</label>
                <select class="form-control" name="category.id">
                  <c:forEach var="categories" items="${category}">
                    <option value="${categories.id}" ${categories.id eq bookDTO.category.id ? 'selected' : ''}>${categories.category}</option>
                  </c:forEach>
                </select>
              </div>
              <div class="form-group">
                <label>Tác giả</label>
                <select class="form-control" name="author.id" value="${bookDTO.author.name}">
                  <c:forEach var="authors" items="${author}">
                    <option value="${authors.id}" ${authors.id eq bookDTO.author.id ? 'selected' : ''}>${authors.name}</option>
                  </c:forEach>
                </select>
              </div>
              <div class="form-group">
                <label>Miêu tả sách</label>
                <input class="form-control" type="text" name="bookDescription" value="${bookDTO.bookDescription}" required>
              </div>
              <div class="form-group">
                <label>Số lượng</label>
                <input class="form-control" type="number" name="currentQuantity" value="${bookDTO.currentQuantity}" required>
              </div>
              <div class="form-group">
                <label for="imageBook">Hình ảnh của sách</label>
                <img src="data:image/jpeg;base64, ${picture.imagePath}" alt="Ảnh của sách"/>
                <input class="form-control" type="file" id="imageBook" name="imageBook" value="${picture.imagePath}" required>
              </div>
              <div class="form-group">
                <label>Giá tiền</label>
                <input class="form-control" type="number" id="price" name="price" value="${bookDTO.price}" required>
              </div>
              <div class="form-group">
                <label>Chi tiết sách</label>
                <div class="card-body">
                  <div class="form-group">
                    <label>Nhà xuất bản</label>
                    <input class="form-control" type="text" name="Publishing_House" value="${bookDetails.publishing_House}">
                  </div>
                  <div class="form-group">
                    <label>Năm xuất bản</label>
                    <input class="form-control" type="number" name="Publishing_Year" value="${bookDetails.publishing_Year}">
                  </div>
                  <div class="form-group">
                    <label>Kích thước</label>
                    <input class="form-control" type="text" name="size" value="${bookDetails.size}">
                  </div>
                  <div class="form-group">
                    <label>Số trang</label>
                    <input class="form-control" type="number" name="pages" value="${bookDetails.pages}">
                  </div>
                  <div class="form-group">
                    <label>Trang bìa</label>
                    <input class="form-control" type="text" name="Book_Cover" value="${bookDetails.book_Cover}">
                  </div>
                  <div class="mt-4">
                    <button class="btn btn-primary" type="submit">Lưu</button>
                    <a href="subcategories" class="btn btn-link">Hủy bỏ</a>
                  </div>
            </form>
          </div>
        </div>
        <!-- /Form -->
      </div>
    </div>
  </div>
</div>
</div>
</div>
</body>
</html>