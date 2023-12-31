<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>View Cart</title>
</head>
<body>


<!-- ====== MAIN CONTENT ====== -->
<div class="page-header border-bottom">
    <div class="container">
        <div class="d-md-flex justify-content-between align-items-center py-4">
            <h1 class="page-title font-size-3 font-weight-medium m-0 text-lh-lg">Shop Single</h1>
            <nav class="woocommerce-breadcrumb font-size-2">
                <a href="#" class="h-primary">Home</a>
                <span class="breadcrumb-separator mx-1"><i class="fas fa-angle-right"></i></span>
                <a href="#" class="h-primary">Shop</a>
                <span class="breadcrumb-separator mx-1"><i class="fas fa-angle-right"></i></span>Shop Single
            </nav>
        </div>
    </div>
</div>
<div class="site-content bg-punch-light overflow-hidden" id="content">
    <div class="container">
        <header class="entry-header space-top-2 space-bottom-1 mb-2">
            <h1 class="entry-title font-size-7">Your cart:
                <c:out value="${cart.totalItems}"/>
        </header>

        <div class="row pb-8">
            <div id="primary" class="content-area" style="width:70%; margin-right: 30px;">
                <main id="main" class="site-main ">
                    <c:if test="${not empty check}">
                        <div class="alert alert-danger">
                                ${check}
                        </div>
                    </c:if>
                    <div class="page type-page status-publish hentry">
                        <!-- .entry-header -->
                        <div class="entry-content">
                            <div class="woocommerce">
                                <form class="woocommerce-cart-form table-responsive"
                                      action="<c:url value='/user/update-cart'/>" method="post">
                                    <table class="shop_table shop_table_responsive cart woocommerce-cart-form__contents">
                                        <thead>
                                        <tr>
                                            <th class="product-name">Product</th>
                                            <th class="product-price">Price</th>
                                            <th class="product-quantity">Quantity</th>
                                            <th class="product-subtotal">Total</th>
                                            <th class="product-remove">&nbsp;</th>
                                        </tr>
                                        </thead>
                                        <c:forEach var="carts" items="${cart.cartItem}">
                                        <tbody>
                                        <tr class="woocommerce-cart-form__cart-item cart_item">
                                            <td class="product-name" data-title="Product">
                                                <div class="d-flex align-items-center">
                                                    <a href="#">
                                                        <img src="${pageContext.request.contextPath}${carts.book.picture.imagePath}"
                                                             width="80" height="120"
                                                             class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image"
                                                             alt="">
                                                    </a>
                                                    <div class="ml-3 m-w-200-lg-down">
                                                        <a href="#"><c:out value="${carts.book.name}"/></a>
                                                        <a href="#" class="text-gray-700 font-size-2 d-block"
                                                           tabindex="0"><c:out
                                                                value="${carts.book.author.name}"/></a>
                                                    </div>
                                                </div>
                                            </td>

                                            <td class="product-price" data-title="Price">
                                                <span class="woocommerce-Price-amount amount"><span
                                                        class="woocommerce-Price-currencySymbol"></span><c:out
                                                        value="${carts.book.formatVND(carts.book.price)}"/></span>
                                            </td>

                                            <td class="product-quantity" data-title="Quantity">
                                                <div class="quantity d-flex align-items-center">
                                                    <!-- Quantity -->
                                                    <div class="border px-3 width-120">
                                                        <div class="js-quantity">
                                                            <div class="d-flex align-items-center">
                                                                <label class="screen-reader-text sr-only">Quantity</label>
                                                                    <%--                                                                <a class="js-minus text-dark" href="javascript:;">--%>
                                                                    <%--                                                                    <svg xmlns="http://www.w3.org/2000/svg"--%>
                                                                    <%--                                                                         xmlns:xlink="http://www.w3.org/1999/xlink"--%>
                                                                    <%--                                                                         width="10px" height="1px">--%>
                                                                    <%--                                                                        <path fill-rule="evenodd" fill="rgb(22, 22, 25)"--%>
                                                                    <%--                                                                              d="M-0.000,-0.000 L10.000,-0.000 L10.000,1.000 L-0.000,1.000 L-0.000,-0.000 Z"/>--%>
                                                                    <%--                                                                    </svg>--%>
                                                                    <%--                                                                </a>--%>
                                                                    <%--                                                                <input type="hidden" name="id" <c:out value="${carts.book.id}"/>--%>
                                                                <input type="number"
                                                                       class="input-text qty text js-result form-control text-center border-0"
                                                                       step="1" min="1" max="100"
                                                                       name="quantity"
                                                                       value=
                                                                           <c:out value="${carts.quantity}"/> title="Qty">
                                                                    <%--                                                                <a class="js-plus text-dark" href="javascript:;">--%>
                                                                    <%--                                                                    <svg xmlns="http://www.w3.org/2000/svg"--%>
                                                                    <%--                                                                         xmlns:xlink="http://www.w3.org/1999/xlink"--%>
                                                                    <%--                                                                         width="10px" height="10px">--%>
                                                                    <%--                                                                        <path fill-rule="evenodd" fill="rgb(22, 22, 25)"--%>
                                                                    <%--                                                                              d="M10.000,5.000 L6.000,5.000 L6.000,10.000 L5.000,10.000 L5.000,5.000 L-0.000,5.000 L-0.000,4.000 L5.000,4.000 L5.000,-0.000 L6.000,-0.000 L6.000,4.000 L10.000,4.000 L10.000,5.000 Z"/>--%>
                                                                    <%--                                                                    </svg>--%>
                                                                    <%--                                                                </a>--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- End Quantity -->
                                                </div>
                                            </td>

                                            <td class="product-subtotal" data-title="Total">
                                                <span class="woocommerce-Price-amount amount"><span
                                                        class="woocommerce-Price-currencySymbol"></span><c:out
                                                        value="${carts.formatVND(carts.totalPrice)}"/></span>
                                            </td>
                                            <td class="product-remove">
                                                <button type="submit" name="action" value="update" title="update1">
                                                    <i class="fa fa-retweet" aria-hidden="true"></i>
                                                </button>

                                                <button type="submit" name="action" value="delete" title="delete1">
                                                    <i class="fa fa-trash" aria-hidden="true"></i>
                                                </button>

                                            </td>
                                            <input type="hidden" name="id"
                                                   value="<c:out value="${carts.book.id}"/>"/>
                                        </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </form>
                            </div>
                        </div>
                        <!-- .entry-content -->
                    </div>
                </main>
            </div>
            <div id="secondary" class="sidebar cart-collaterals order-1" role="complementary"
                 style="margin-left: 50px;">
                <div id="cartAccordion" class="border border-gray-900 bg-white mb-5">
                    <div class="p-4d875 border">
                        <div id="cartHeadingOne" class="cart-head">
                            <a class="d-flex align-items-center justify-content-between text-dark" href="#"
                               data-toggle="collapse"
                               data-target="#cartCollapseOne"
                               aria-expanded="true"
                               aria-controls="cartCollapseOne">

                                <h3 class="cart-title mb-0 font-weight-medium font-size-3">Cart Totals</h3>

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

                        <div id="cartCollapseOne" class="mt-4 cart-content collapse show"
                             aria-labelledby="cartHeadingOne"
                             data-parent="#cartAccordion">
                            <table class="shop_table shop_table_responsive">
                                <tbody>
                                <tr class="cart-subtotal">
                                    <th>Subtotal</th>
                                    <td data-title="Subtotal"><span class="woocommerce-Price-amount amount"><span
                                            class="woocommerce-Price-currencySymbol"></span><c:out
                                            value="${cart.formatVND(cart.totalPrices)}"/></span></td>
                                </tr>

                                <tr class="order-shipping">
                                    <th>Shipping</th>
                                    <td data-title="Shipping">Free Shipping</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <div class="p-4d875 border">
                        <div id="cartHeadingTwo" class="cart-head">
                            <a class="d-flex align-items-center justify-content-between text-dark" href="#"
                               data-toggle="collapse"
                               data-target="#cartCollapseTwo"
                               aria-expanded="true"
                               aria-controls="cartCollapseTwo">

                                <h3 class="cart-title mb-0 font-weight-medium font-size-3">Shipping</h3>

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

                        <div id="cartCollapseTwo" class="mt-4 cart-content collapse show"
                             aria-labelledby="cartHeadingTwo"
                             data-parent="#cartAccordion">
                            <!-- Checkboxes -->
                            <ul id="shipping_method">
                                <li>
                                    <input type="radio" name="shipping_method[0]" data-index="0"
                                           id="shipping_method_0_flat_rate1" value="flat_rate:1"
                                           class="shipping_method">
                                    <label for="shipping_method_0_flat_rate1">Free shipping</label>
                                </li>

                                <li>
                                    <input type="radio" name="shipping_method[0]" data-index="0"
                                           id="shipping_method_0_flat_rate2" value="flat_rate:2" class="shipping_method"
                                           checked="checked">
                                    <label for="shipping_method_0_flat_rate2">Fast ship: <span
                                            class="woocommerce-Price-amount amount"><span
                                            class="woocommerce-Price-currencySymbol">22.000</span>VNĐ</span></label>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="p-4d875 border">
                        <table class="shop_table shop_table_responsive">
                            <tbody>
                            <tr class="order-total">
                                <th>Total</th>
                                <td data-title="Total"><strong><span class="woocommerce-Price-amount amount"><span
                                        class="woocommerce-Price-currencySymbol"></span><c:out
                                        value="${cart.formatVND(cart.totalPrices)}"/></span></strong></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="wc-proceed-to-checkout">
                    <a href="<c:url value="/user/checkout"/>"
                       class="checkout-button button alt wc-forward btn btn-dark btn-block rounded-0 py-4">Proceed to
                        checkout</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ====== END MAIN CONTENT ====== -->

</body>
</html>
