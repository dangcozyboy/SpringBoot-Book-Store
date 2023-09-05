<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>My Account</title>
</head>
<body>
<!-- ====== MAIN CONTENT ===== -->
<main id="content">
    <div class="container">
        <div class="row">
            <div class="col-md-3 border-right">
                <h6 class="font-weight-medium font-size-7 pt-5 pt-lg-8  mb-5 mb-lg-7">My account</h6>
                <div class="tab-wrapper">
                    <ul class="my__account-nav nav flex-column mb-0" role="tablist" id="pills-tab">
                        <li class="nav-item mx-0">
                            <a class="nav-link d-flex align-items-center px-0 active" id="pills-one-example1-tab"
                               data-toggle="pill" href="#pills-one-example1" role="tab"
                               aria-controls="pills-one-example1" aria-selected="false">
                                <span class="font-weight-normal text-gray-600">Dashboard</span>
                            </a>
                        </li>
                        <li class="nav-item mx-0">
                            <a class="nav-link d-flex align-items-center px-0" id="pills-two-example1-tab"
                               data-toggle="pill" href="#pills-two-example1" role="tab"
                               aria-controls="pills-two-example1" aria-selected="false">
                                <span class="font-weight-normal text-gray-600">Orders</span>
                            </a>
                        </li>
                        <li class="nav-item mx-0">
                            <a class="nav-link d-flex align-items-center px-0" id="pills-four-example1-tab"
                               data-toggle="pill" href="#pills-four-example1" role="tab"
                               aria-controls="pills-four-example1" aria-selected="false">
                                <span class="font-weight-normal text-gray-600">Addresses</span>
                            </a>
                        </li>
                        <li class="nav-item mx-0">
                            <a class="nav-link d-flex align-items-center px-0" id="pills-five-example1-tab"
                               data-toggle="pill" href="#pills-five-example1" role="tab"
                               aria-controls="pills-five-example1" aria-selected="false">
                                <span class="font-weight-normal text-gray-600">Account details</span>
                            </a>
                        </li>
                        <li class="nav-item mx-0">
                            <a class="nav-link d-flex align-items-center px-0" href="#">
                                <span class="font-weight-normal text-gray-600">Logout</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-9">
                <div class="tab-content" id="pills-tabContent">
                    <div class="tab-pane fade show active" id="pills-one-example1" role="tabpanel"
                         aria-labelledby="pills-one-example1-tab">
                        <div class="pt-5 pt-lg-8 pl-md-5 pl-lg-9 space-bottom-2 space-bottom-lg-3 mb-xl-1">
                            <h6 class="font-weight-medium font-size-7 ml-lg-1 mb-lg-8 pb-xl-1">Dashboard</h6>
                            <div class="ml-lg-1 mb-4">
                                <span class="font-size-22">Hello ${account.username}</span>
                                <span class="font-size-2"> (not ${account.username}? <a class="link-black-100" href="#">Log out</a>)</span>
                            </div>
                            <div class="mb-4">
                                <p class="mb-0 font-size-2 ml-lg-1 text-gray-600">From your account dashboard you can
                                    view your <span class="text-dark">recent orders,</span> manage your <span
                                            class="text-dark">shipping and billing addresses,</span> and edit your <span
                                            class="text-dark">password and account details.</span></p>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="pills-two-example1" role="tabpanel"
                         aria-labelledby="pills-two-example1-tab">
                        <div class="pt-5 pl-md-5 pt-lg-8 pl-lg-9 space-bottom-lg-2 mb-lg-4">
                            <h6 class="font-weight-medium font-size-7 ml-lg-1 mb-lg-8 pb-xl-1">Orders</h6>
                            <table class="table">
                                <thead>
                                <tr class="border">
                                    <th scope="col" class="py-3 border-bottom-0 font-weight-medium pl-3 pl-lg-5">Order
                                    </th>
                                    <th scope="col" class="py-3 border-bottom-0 font-weight-medium">Date</th>
                                    <th scope="col" class="py-3 border-bottom-0 font-weight-medium">Status</th>
                                    <th scope="col" class="py-3 border-bottom-0 font-weight-medium">Delivery Date</th>
                                    <th scope="col" class="py-3 border-bottom-0 font-weight-medium">Total Price</th>
                                    <th scope="col" class="py-3 border-bottom-0 font-weight-medium">Actions</th>
                                </tr>
                                </thead>

                                <tbody>
                                <c:forEach var="order" items="${orders}">
                                    <tr class="border">
                                        <th class="pl-3 pl-md-5 font-weight-normal align-middle py-6">#${order.id}</th>
                                        <td class="align-middle py-5">${order.orderDate}</td>
                                        <td class="align-middle py-5">${order.orderStatus}</td>
                                        <td class="align-middle py-5">
                                            <c:if test="${order.shipDate != null}">
                                                ${order.shipDate}
                                            </c:if>
                                            <c:if test="${order.shipDate == null}">
                                                Waiting for the accept
                                            </c:if>
                                        </td>
                                        <td class="align-middle py-5">
                                            <span class="text-primary">VND ${order.totalPrice}</span> for items
                                        </td>
                                        <td class="align-middle py-5">
                                            <div class="d-flex justify-content-center">
                                                <button type="submit"
                                                        class="btn btn-dark rounded-0 btn-wide font-weight-medium">View
                                                </button>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="pills-three-example1" role="tabpanel"
                         aria-labelledby="pills-three-example1-tab">
                        <div class="pt-5 pl-md-5 pt-lg-8 pl-lg-9 space-bottom-lg-2 mb-lg-4">
                            <h6 class="font-weight-medium font-size-7 ml-lg-1 mb-lg-8 pb-xl-1">Downloads</h6>
                            <table class="table">
                                <thead>
                                <tr class="border">
                                    <th scope="col" class="py-3 border-bottom-0 font-weight-medium pl-3 pl-md-5">Order
                                    </th>
                                    <th scope="col" class="py-3 border-bottom-0 font-weight-medium">Date</th>
                                    <th scope="col" class="py-3 border-bottom-0 font-weight-medium">Staus</th>
                                    <th scope="col" class="py-3 border-bottom-0 font-weight-medium">Total</th>
                                    <th scope="col" class="py-3 border-bottom-0 font-weight-medium">Actions</th>
                                </tr>
                                </thead>

                                <tbody>
                                <tr class="border">
                                    <th class="pl-3 pl-md-5 font-weight-normal align-middle py-6">#30785</th>
                                    <td class="align-middle py-5">March 26, 2020</td>
                                    <td class="align-middle py-5">On hold</td>
                                    <td class="align-middle py-5">
                                        <span class="text-primary">$1,855.00</span> for 5 items
                                    </td>
                                    <td class="align-middle py-5">
                                        <div class="d-flex justify-content-center">
                                            <button type="submit"
                                                    class="btn btn-dark rounded-0 btn-wide font-weight-medium">View
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="pills-four-example1" role="tabpanel"
                         aria-labelledby="pills-four-example1-tab">
                        <div class="pt-5 pl-md-5 pt-lg-8 pl-lg-9 space-bottom-2 mb-lg-4">
                            <h6 class="font-weight-medium font-size-7 ml-lg-1 mb-5 mb-lg-8 pb-xl-1">Addresses</h6>
                            <div class="row row-cols-1 row-cols-md-2">
                                <div class="col">
                                    <div class="mb-6 mb-md-0">
                                        <h6 class="font-weight-medium font-size-22 mb-3">Billing Address
                                        </h6>
                                        <address class="d-flex flex-column mb-4">
                                            <span class="text-gray-600 font-size-2">${account.name}</span>
                                            <span class="text-gray-600 font-size-2">${information.address}</span>
                                        </address>
                                    </div>
                                </div>
                                <div class="col">
                                    <form action="<c:url value="/user/detailsAccount/?id=${account.id}"/>" method="post"
                                          modelAttribute="infomationDTO">
                                        <h6 class="font-weight-medium font-size-22 mb-3">Shipping Address
                                        </h6>
                                        <div class="col-md-12 mb-4 mb-md-0">
                                            <div class="js-form-message">
                                                <input type="text" class="form-control rounded-0" name="address"
                                                       aria-label="Jack Wayley"
                                                       data-error-class="u-has-error" data-msg="Please enter your address."
                                                       data-success-class="u-has-success"
                                                       placeholder="${account.informationAccount.address}" required>
                                            </div>
                                        </div>
                                        <div class="col-md-12 mb-4 mb-md-0" style="margin-top: 5%;">
                                            <div class="js-form-message">
                                                <input type="number" class="form-control rounded-0" name="phonenumber"
                                                       aria-label="Jack Wayley"
                                                       data-error-class="u-has-error" data-msg="Please enter your name."
                                                       data-success-class="u-has-success" pattern="[0-9]{10}"
                                                       placeholder="${account.informationAccount.phone}" required>
                                            </div>
                                        </div>
                                        <div class="d-flex" style="margin-top: 5%;">
                                            <button type="submit"
                                                    class="btn btn-dark width-150 rounded-0 btn-wide font-weight-medium">
                                                Edit
                                            </button>
                                        </div>
                                        <input type="hidden" value="${account.id}">
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="pills-five-example1" role="tabpanel"
                         aria-labelledby="pills-five-example1-tab">
                        <div class="border-bottom mb-6 pb-6 mb-lg-8 pb-lg-9">
                            <div class="pt-5 pl-md-5 pt-lg-8 pl-lg-9">
                                <h6 class="font-weight-medium font-size-7 ml-lg-1 mb-lg-8 pb-xl-1">Account Details</h6>
                                <div class="font-weight-medium font-size-22 mb-4 pb-xl-1">Edit Account</div>
                                <div class="row">

                                    <div class="col-md-6 mb-4">
                                        <div class="js-form-message">
                                            <label for="exampleFormControlInput1">Full name</label>
                                            <input type="text" class="form-control rounded-0 pl-3 placeholder-color-3"
                                                   id="exampleFormControlInput1" name="firstname"
                                                   aria-label="Jack Wayley" required="" data-error-class="u-has-error"
                                                   data-msg="Please enter your name." data-success-class="u-has-success"
                                                   placeholder="${account.name}">
                                        </div>
                                    </div>
                                    <div class="col-md-12 mb-4">
                                        <div class="js-form-message">
                                            <label for="exampleFormControlInput3">Username</label>
                                            <input type="text" class="form-control rounded-0" name="username"
                                                   aria-label="Jack Wayley" id="exampleFormControlInput3" required=""
                                                   data-error-class="u-has-error" data-msg="Please enter your name."
                                                   data-success-class="u-has-success" placeholder="${account.username}">
                                        </div>
                                    </div>
                                    <div class="col-md-12 mb-4 mb-md-0">
                                        <div class="js-form-message">
                                            <label for="exampleFormControlInput4">Email address</label>
                                            <input type="email" class="form-control rounded-0" name="email"
                                                   id="exampleFormControlInput4" aria-label="Jack Wayley" required=""
                                                   data-error-class="u-has-error" data-msg="Please enter your name."
                                                   data-success-class="u-has-success"
                                                   placeholder="${account.informationAccount.email}">
                                        </div>
                                    </div>
                                    <div class="ml-3" style="margin-top: 30px">
                                        <button type="submit"
                                                class="btn btn-wide btn-dark text-white rounded-0 transition-3d-hover height-60 width-390">
                                            Save Changes
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="widgetAccordion">
                            <div id="Format" class="widget p-4d875 border">
                                <div id="widgetHeading23" class="widget-head">
                                    <a class="d-flex align-items-center justify-content-between text-dark" href="#"
                                       data-toggle="collapse"
                                       data-target="#widgetCollapse23"
                                       aria-expanded="true"
                                       aria-controls="widgetCollapse23">

                                        <h3 class="widget-title mb-0 font-weight-medium font-size-3">Password
                                            Change</h3>

                                        <svg class="mins" xmlns="http://www.w3.org/2000/svg"
                                             xmlns:xlink="http://www.w3.org/1999/xlink" width="15px" height="2px">
                                            <path fill-rule="evenodd" fill="rgb(22, 22, 25)"
                                                  d="M0.000,-0.000 L15.000,-0.000 L15.000,2.000 L0.000,2.000 L0.000,-0.000 Z"/>
                                        </svg>

                                        <svg class="plus" xmlns="http://www.w3.org/2000/svg"
                                             xmlns:xlink="http://www.w3.org/1999/xlink" width="15px" height="15px">
                                            <path fill-rule="evenodd" fill="rgb(22, 22, 25)"
                                                  d="M15.000,8.000 L9.000,8.000 L9.000,15.000 L7.000,15.000 L7.000,8.000 L0.000,8.000 L0.000,6.000 L7.000,6.000 L7.000,-0.000 L9.000,-0.000 L9.000,6.000 L15.000,6.000 L15.000,8.000 Z"/>
                                        </svg>
                                    </a>
                                </div>
                            </div>

                            <div id="widgetCollapse23" class="mt-3 widget-content collapse show"
                                 aria-labelledby="widgetHeading23"
                                 data-parent="#widgetAccordion">
                                <div class="pl-md-5 pl-lg-9 space-bottom-2 space-bottom-lg-3">
                                    <div class="font-weight-medium font-size-22 mb-4 pb-xl-1">Password Change</div>
                                    <div class="row">
                                        <div class="col-md-12 mb-4">
                                            <div class="js-form-message">
                                                <label for="exampleFormControlInput5">Current Password</label>
                                                <input type="password" class="form-control rounded-0" name="name"
                                                       id="exampleFormControlInput5" aria-label="Jack Wayley"
                                                       required="" data-error-class="u-has-error"
                                                       data-msg="Please enter your name."
                                                       data-success-class="u-has-success">
                                            </div>
                                        </div>
                                        <div class="col-md-12 mb-4">
                                            <div class="js-form-message">
                                                <label for="exampleFormControlInput6">New Password</label>
                                                <input type="password" class="form-control rounded-0" name="name"
                                                       id="exampleFormControlInput6" aria-label="Jack Wayley"
                                                       required="" data-error-class="u-has-error"
                                                       data-msg="Please enter your name."
                                                       data-success-class="u-has-success">
                                            </div>
                                        </div>
                                        <div class="col-md-12 mb-5">
                                            <div class="js-form-message">
                                                <label for="exampleFormControlInput7">Confirm new password</label>
                                                <input type="password" class="form-control rounded-0" name="name"
                                                       id="exampleFormControlInput7" aria-label="Jack Wayley"
                                                       required="" data-error-class="u-has-error"
                                                       data-msg="Please enter your name."
                                                       data-success-class="u-has-success">
                                            </div>
                                        </div>
                                        <div class="ml-3">
                                            <button type="submit"
                                                    class="btn btn-wide btn-dark text-white rounded-0 transition-3d-hover height-60 width-390">
                                                Save Changes
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--            <div class="pl-md-5 pl-lg-9 space-bottom-2 space-bottom-lg-3">--%>
                        <%--              <div class="font-weight-medium font-size-22 mb-4 pb-xl-1">Password Change</div>--%>
                        <%--              <div class="row">--%>
                        <%--                <div class="col-md-12 mb-4">--%>
                        <%--                  <div class="js-form-message">--%>
                        <%--                    <label for="exampleFormControlInput5">Current Password</label>--%>
                        <%--                    <input type="password" class="form-control rounded-0" name="name" id="exampleFormControlInput5" aria-label="Jack Wayley" required="" data-error-class="u-has-error" data-msg="Please enter your name." data-success-class="u-has-success">--%>
                        <%--                  </div>--%>
                        <%--                </div>--%>
                        <%--                <div class="col-md-12 mb-4">--%>
                        <%--                  <div class="js-form-message">--%>
                        <%--                    <label for="exampleFormControlInput6">New Password</label>--%>
                        <%--                    <input type="password" class="form-control rounded-0" name="name" id="exampleFormControlInput6" aria-label="Jack Wayley" required="" data-error-class="u-has-error" data-msg="Please enter your name." data-success-class="u-has-success">--%>
                        <%--                  </div>--%>
                        <%--                </div>--%>
                        <%--                <div class="col-md-12 mb-5">--%>
                        <%--                  <div class="js-form-message">--%>
                        <%--                    <label for="exampleFormControlInput7">Confirm new password</label>--%>
                        <%--                    <input type="password" class="form-control rounded-0" name="name" id="exampleFormControlInput7" aria-label="Jack Wayley" required="" data-error-class="u-has-error" data-msg="Please enter your name." data-success-class="u-has-success">--%>
                        <%--                  </div>--%>
                        <%--                </div>--%>
                        <%--                <div class="ml-3">--%>
                        <%--                  <button type="submit" class="btn btn-wide btn-dark text-white rounded-0 transition-3d-hover height-60 width-390">Save Changes</button>--%>
                        <%--                </div>--%>
                        <%--              </div>--%>
                        <%--            </div>--%>
                    </div>
                    <div class="tab-pane fade" id="pills-six-example1" role="tabpanel"
                         aria-labelledby="pills-six-example1-tab">
                        <div class="pt-5 pl-md-5 pt-lg-8 pl-lg-9 space-bottom-lg-3">
                            <h6 class="font-weight-medium font-size-7 ml-lg-1 mb-lg-8 pb-xl-1">Wishlist</h6>
                            <table class="table mb-0">
                                <thead>
                                <tr class="border">
                                    <th scope="col" class="py-3 border-bottom-0 font-weight-medium pl-3 pl-md-5">
                                        Prouct
                                    </th>
                                    <th scope="col" class="py-3 border-bottom-0 font-weight-medium">Price</th>
                                    <th scope="col" class="py-3 border-bottom-0 font-weight-medium">Stock Staus</th>
                                    <th scope="col" class="py-3 border-bottom-0 font-weight-medium">Actions</th>
                                </tr>
                                </thead>

                                <tbody>
                                <tr class="border">
                                    <th class="pl-3 pl-md-5 font-weight-normal align-middle py-6">
                                        <div class="d-flex align-items-center">
                                            <a class="d-block" href="#">
                                                <img class="img-fluid" src="https://placehold.it/80x120"
                                                     alt="Image-Description">
                                            </a>
                                            <div class="ml-xl-4">
                                                <div class="font-weight-normal">
                                                    <a href="#">The Overdue Life of Amy Byler</a>
                                                </div>
                                                <div class="font-size-2"><a href="#" class="text-gray-700" tabindex="0">Jay
                                                    Shetty</a></div>
                                            </div>
                                        </div>
                                    </th>
                                    <td class="align-middle py-5">$37</td>
                                    <td class="align-middle py-5">In Stock</td>
                                    <td class="align-middle py-5">
                                        <span class="product__add-to-cart">ADD TO CART</span>
                                    </td>
                                </tr>
                                <tr class="border">
                                    <th class="pl-3 pl-md-5 font-weight-normal align-middle py-6">
                                        <div class="d-flex align-items-center">
                                            <a class="d-block" href="#">
                                                <img class="img-fluid" src="https://placehold.it/80x120"
                                                     alt="Image-Description">
                                            </a>
                                            <div class="ml-xl-4">
                                                <div class="font-weight-normal">
                                                    <a href="#">The Overdue Life of Amy Byler</a>
                                                </div>
                                                <div class="font-size-2"><a href="#" class="text-gray-700" tabindex="0">Jay
                                                    Shetty</a></div>
                                            </div>
                                        </div>
                                    </th>
                                    <td class="align-middle py-5">$37</td>
                                    <td class="align-middle py-5">In Stock</td>
                                    <td class="align-middle py-5">
                                        <span class="product__add-to-cart">ADD TO CART</span>
                                    </td>
                                </tr>
                                <tr class="border">
                                    <th class="pl-5 font-weight-normal align-middle py-6">
                                        <div class="d-flex align-items-center">
                                            <a class="d-block" href="#">
                                                <img class="img-fluid" src="https://placehold.it/80x120"
                                                     alt="Image-Description">
                                            </a>
                                            <div class="ml-xl-4">
                                                <div class="font-weight-normal">
                                                    <a href="#">The Overdue Life of Amy Byler</a>
                                                </div>
                                                <div class="font-size-2"><a href="#" class="text-gray-700" tabindex="0">Jay
                                                    Shetty</a></div>
                                            </div>
                                        </div>
                                    </th>
                                    <td class="align-middle py-5">$37</td>
                                    <td class="align-middle py-5">In Stock</td>
                                    <td class="align-middle py-5">
                                        <span class="product__add-to-cart">ADD TO CART</span>
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
</main>
<!-- ====== END MAIN CONTENT ===== -->

</body>
</html>
