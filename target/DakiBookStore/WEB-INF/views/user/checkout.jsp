<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Title</title>
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
<div id="content" class="site-content bg-punch-light space-bottom-3">
    <div class="col-full container">
        <div id="primary" class="content-area">
            <main id="main" class="site-main">
                <article id="post-6" class="post-6 page type-page status-publish hentry">
                    <header class="entry-header space-top-2 space-bottom-1 mb-2">
                        <h4 class="entry-title font-size-7 text-center">Checkout</h4>
                    </header>
                    <!-- .entry-header -->
                    <div class="entry-content">
                        <div class="woocommerce">
                            <div class="woocommerce-info p-4 bg-white border">Have a coupon?
                                <a class="showcoupon"
                                   data-toggle="collapse"
                                   href="#collapseExample9"
                                   role="button"
                                   aria-expanded="false"
                                   aria-controls="collapseExample9">
                                    Click here to enter your code
                                </a>
                            </div>

                            <form id="collapseExample9" class="collapse checkout_coupon mt-4 p-4 bg-white border"
                                  method="post">
                                <div class="row d-flex">
                                    <p class="col-md-4 d-inline form-row form-row-first mb-3 mb-md-0">
                                        <input type="text" name="coupon_code1" class="input-text form-control"
                                               placeholder="Coupon code" id="coupon_code1" value="">
                                    </p>

                                    <p class="col-md-3 d-inline form-row form-row-last">
                                        <input type="submit"
                                               class="button form-control border-0 height-4 btn btn-dark rounded-0"
                                               name="apply_coupon" value="Apply coupon">
                                    </p>
                                </div>

                                <div class="clear"></div>
                            </form>

                            <form name="checkout" method="post" class="checkout woocommerce-checkout row mt-8"
                                  action="https://themes.woocommerce.com/storefront/checkout/"
                                  enctype="multipart/form-data" novalidate="novalidate">
                                <div class="col2-set col-md-6 col-lg-7 col-xl-8 mb-6 mb-md-0" id="customer_details">
                                    <div class="px-4 pt-5 bg-white border">
                                        <div class="woocommerce-billing-fields">

                                            <h3 class="mb-4 font-size-3">Billing details</h3>

                                            <div class="woocommerce-billing-fields__field-wrapper row">

                                                <p class="col-12 mb-4d75 form-row form-row-wide"
                                                   id="billing_company_field" data-priority="30">
                                                    <label for="billing_company" class="form-label">Full name</label>
                                                    <input type="text" class="input-text form-control" name="name"
                                                           id="billing_company" placeholder="" value="${account.name}"
                                                           autocomplete="organization">
                                                </p>
                                                <p class="col-12 mb-4d75 form-row form-row-wide" data-priority="30">
                                                    <label for="billing_company" class="form-label">Address</label>
                                                    <input type="text" class="input-text form-control"
                                                           name="billing_company" placeholder=""
                                                           value="${account.informationAccount.address}"
                                                           autocomplete="organization">
                                                </p>

                                                <p class="col-12 mb-4d75 form-row form-row-wide address-field validate-required"
                                                   id="billing_city_field" data-priority="70"
                                                   data-o_class="form-row form-row-wide address-field validate-required">
                                                    <label for="billing_city" class="form-label">Phone number <abbr
                                                            class="required" title="required">*</abbr></label>
                                                    <input type="text" class="input-text form-control"
                                                           name="billing_city" id="billing_city" placeholder=""
                                                           value="${account.informationAccount.phone}"
                                                           autocomplete="address-level2">
                                                </p>


                                                <p class="col-12 mb-4d75 form-row form-row-last validate-required validate-email"
                                                   id="billing_email_field" data-priority="110">
                                                    <label for="billing_email" class="form-label">Email address <abbr
                                                            class="required" title="required">*</abbr></label>
                                                    <input type="email" class="input-text form-control"
                                                           name="billing_email" id="billing_email" placeholder=""
                                                           value="${account.informationAccount.email}"
                                                           autocomplete="email">
                                                </p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="px-4 pt-5 bg-white border border-top-0 mt-n-one">
                                        <div class="woocommerce-additional-fields">
                                            <h3 class="mb-4 font-size-3">Additional information</h3>
                                            <div class="woocommerce-additional-fields__field-wrapper">
                                                <p class="col-12 mb-4d75 px-0 form-row notes" id="order_comments_field"
                                                   data-priority="">
                                                    <label for="order_comments" class="form-label">Order notes
                                                        (optional)</label>
                                                    <textarea name="order_comments" class="input-text form-control"
                                                              id="order_comments"
                                                              placeholder="Notes about your order, e.g. special notes for delivery."
                                                              rows="8" cols="5"></textarea>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <h3 id="order_review_heading" class="d-none">Your order</h3>

                                <div id="order_review"
                                     class="col-md-6 col-lg-5 col-xl-4 woocommerce-checkout-review-order">
                                    <div id="checkoutAccordion" class="border border-gray-900 bg-white mb-5">
                                        <div class="p-4d875 border">
                                            <div id="checkoutHeadingOnee" class="checkout-head">
                                                <a href="#"
                                                   class="text-dark d-flex align-items-center justify-content-between"
                                                   data-toggle="collapse"
                                                   data-target="#checkoutCollapseOnee"
                                                   aria-expanded="true"
                                                   aria-controls="checkoutCollapseOnee">

                                                    <h3 class="checkout-title mb-0 font-weight-medium font-size-3">Your
                                                        order</h3>

                                                    <svg class="mins" xmlns="http://www.w3.org/2000/svg"
                                                         xmlns:xlink="http://www.w3.org/1999/xlink" width="15px"
                                                         height="2px">
                                                        <path fill-rule="evenodd" fill="rgb(22, 22, 25)"
                                                              d="M0.000,-0.000 L15.000,-0.000 L15.000,2.000 L0.000,2.000 L0.000,-0.000 Z"/>
                                                    </svg>

                                                    <svg class="plus" xmlns="http://www.w3.org/2000/svg"
                                                         xmlns:xlink="http://www.w3.org/1999/xlink" width="15px"
                                                         height="15px">
                                                        <path fill-rule="evenodd" fill="rgb(22, 22, 25)"
                                                              d="M15.000,8.000 L9.000,8.000 L9.000,15.000 L7.000,15.000 L7.000,8.000 L0.000,8.000 L0.000,6.000 L7.000,6.000 L7.000,-0.000 L9.000,-0.000 L9.000,6.000 L15.000,6.000 L15.000,8.000 Z"/>
                                                    </svg>
                                                </a>
                                            </div>

                                            <div id="checkoutCollapseOnee" class="mt-4 checkout-content collapse show"
                                                 aria-labelledby="checkoutHeadingOnee"
                                                 data-parent="#checkoutAccordion">
                                                <table class="shop_table woocommerce-checkout-review-order-table">
                                                    <thead class="d-none">
                                                    <tr>
                                                        <th class="product-name">Product</th>
                                                        <th class="product-total">Total</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <c:forEach var="carts" items="${cart.cartItem}">
                                                        <tr class="cart_item">
                                                            <td class="product-name">
                                                                <c:out value="${carts.book.name}"/>&nbsp; <strong
                                                                    class="product-quantity">× <c:out
                                                                    value="${carts.quantity}"/></strong>
                                                            </td>
                                                            <td class="product-total">
                                                                <span class="woocommerce-Price-amount amount"><span
                                                                        class="woocommerce-Price-currencySymbol">VND </span><c:out
                                                                        value="${carts.formatVND(carts.totalPrice)}"/></span>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                    </tbody>
                                                    <tfoot class="d-none">
                                                    <tr class="cart-subtotal">
                                                        <th>Subtotal</th>
                                                        <td><span class="woocommerce-Price-amount amount"><span
                                                                class="woocommerce-Price-currencySymbol">£</span>97.99</span>
                                                        </td>
                                                    </tr>

                                                    <tr class="order-total">
                                                        <th>Total</th>
                                                        <td><strong><span class="woocommerce-Price-amount amount"><span
                                                                class="woocommerce-Price-currencySymbol">£</span>97.99</span></strong>
                                                        </td>
                                                    </tr>
                                                    </tfoot>
                                                </table>
                                            </div>
                                        </div>

                                        <div class="p-4d875 border">
                                            <div id="checkoutHeadingOne" class="checkout-head">
                                                <a href="#"
                                                   class="text-dark d-flex align-items-center justify-content-between"
                                                   data-toggle="collapse"
                                                   data-target="#checkoutCollapseOne"
                                                   aria-expanded="true"
                                                   aria-controls="checkoutCollapseOne">

                                                    <h3 class="checkout-title mb-0 font-weight-medium font-size-3">Cart
                                                        Totals</h3>

                                                    <svg class="mins" xmlns="http://www.w3.org/2000/svg"
                                                         xmlns:xlink="http://www.w3.org/1999/xlink" width="15px"
                                                         height="2px">
                                                        <path fill-rule="evenodd" fill="rgb(22, 22, 25)"
                                                              d="M0.000,-0.000 L15.000,-0.000 L15.000,2.000 L0.000,2.000 L0.000,-0.000 Z"/>
                                                    </svg>

                                                    <svg class="plus" xmlns="http://www.w3.org/2000/svg"
                                                         xmlns:xlink="http://www.w3.org/1999/xlink" width="15px"
                                                         height="15px">
                                                        <path fill-rule="evenodd" fill="rgb(22, 22, 25)"
                                                              d="M15.000,8.000 L9.000,8.000 L9.000,15.000 L7.000,15.000 L7.000,8.000 L0.000,8.000 L0.000,6.000 L7.000,6.000 L7.000,-0.000 L9.000,-0.000 L9.000,6.000 L15.000,6.000 L15.000,8.000 Z"/>
                                                    </svg>
                                                </a>
                                            </div>

                                            <div id="checkoutCollapseOne" class="mt-4 checkout-content collapse show"
                                                 aria-labelledby="checkoutHeadingOne"
                                                 data-parent="#checkoutAccordion">
                                                <table class="shop_table shop_table_responsive">
                                                    <tbody>
                                                    <tr class="checkout-subtotal">
                                                        <th>Subtotal</th>
                                                        <td data-title="Subtotal"><span
                                                                class="woocommerce-Price-amount amount"><span
                                                                class="woocommerce-Price-currencySymbol">VND</span> <c:out
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
                                            <div id="checkoutHeadingTwo" class="checkout-head">
                                                <a href="#"
                                                   class="text-dark d-flex align-items-center justify-content-between"
                                                   data-toggle="collapse"
                                                   data-target="#checkoutCollapseTwo"
                                                   aria-expanded="false"
                                                   aria-controls="checkoutCollapseTwo">

                                                    <h3 class="checkout-title mb-0 font-weight-medium font-size-3">
                                                        Shipping</h3>

                                                    <svg class="mins" xmlns="http://www.w3.org/2000/svg"
                                                         xmlns:xlink="http://www.w3.org/1999/xlink" width="15px"
                                                         height="2px">
                                                        <path fill-rule="evenodd" fill="rgb(22, 22, 25)"
                                                              d="M0.000,-0.000 L15.000,-0.000 L15.000,2.000 L0.000,2.000 L0.000,-0.000 Z"/>
                                                    </svg>

                                                    <svg class="plus" xmlns="http://www.w3.org/2000/svg"
                                                         xmlns:xlink="http://www.w3.org/1999/xlink" width="15px"
                                                         height="15px">
                                                        <path fill-rule="evenodd" fill="rgb(22, 22, 25)"
                                                              d="M15.000,8.000 L9.000,8.000 L9.000,15.000 L7.000,15.000 L7.000,8.000 L0.000,8.000 L0.000,6.000 L7.000,6.000 L7.000,-0.000 L9.000,-0.000 L9.000,6.000 L15.000,6.000 L15.000,8.000 Z"/>
                                                    </svg>
                                                </a>
                                            </div>

                                            <div id="checkoutCollapseTwo" class="mt-4 checkout-content collapse"
                                                 aria-labelledby="checkoutHeadingTwo"
                                                 data-parent="#checkoutAccordion">
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
                                                               id="shipping_method_0_flat_rate2" value="flat_rate:2"
                                                               class="shipping_method" checked="checked">
                                                        <label for="shipping_method_0_flat_rate2">Flat rate: <span
                                                                class="woocommerce-Price-amount amount"><span
                                                                class="woocommerce-Price-currencySymbol">22.000</span> VNĐ</span></label>
                                                    </li>
                                                </ul>
                                                <!-- End Checkboxes -->
                                                <span class="font-size-2">Shipping to Turkey.</span><a href="#"
                                                                                                       class="font-weight-medium h-primary ml-3 font-size-2">Change
                                                Address</a>
                                            </div>
                                        </div>
                                        <div class="p-4d875 border">
                                            <table class="shop_table shop_table_responsive">
                                                <tbody>
                                                <tr class="order-total">
                                                    <th>Total</th>
                                                    <td data-title="Total"><strong><span
                                                            class="woocommerce-Price-amount amount"><span
                                                            class="woocommerce-Price-currencySymbol">VND </span><c:out
                                                            value="${cart.formatVND(cart.totalPrices)}"/></span></strong></td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>

                                        <div class="p-4d875 border">
                                            <div id="checkoutHeadingThreee" class="checkout-head">
                                                <a href="#"
                                                   class="text-dark d-flex align-items-center justify-content-between"
                                                   data-toggle="collapse"
                                                   data-target="#checkoutCollapseThreee"
                                                   aria-expanded="true"
                                                   aria-controls="checkoutCollapseThreee">

                                                    <h3 class="checkout-title mb-0 font-weight-medium font-size-3">
                                                        Payment</h3>

                                                    <svg class="mins" xmlns="http://www.w3.org/2000/svg"
                                                         xmlns:xlink="http://www.w3.org/1999/xlink" width="15px"
                                                         height="2px">
                                                        <path fill-rule="evenodd" fill="rgb(22, 22, 25)"
                                                              d="M0.000,-0.000 L15.000,-0.000 L15.000,2.000 L0.000,2.000 L0.000,-0.000 Z"/>
                                                    </svg>

                                                    <svg class="plus" xmlns="http://www.w3.org/2000/svg"
                                                         xmlns:xlink="http://www.w3.org/1999/xlink" width="15px"
                                                         height="15px">
                                                        <path fill-rule="evenodd" fill="rgb(22, 22, 25)"
                                                              d="M15.000,8.000 L9.000,8.000 L9.000,15.000 L7.000,15.000 L7.000,8.000 L0.000,8.000 L0.000,6.000 L7.000,6.000 L7.000,-0.000 L9.000,-0.000 L9.000,6.000 L15.000,6.000 L15.000,8.000 Z"/>
                                                    </svg>
                                                </a>
                                            </div>

                                            <div id="checkoutCollapseThreee" class="mt-4 checkout-content collapse show"
                                                 aria-labelledby="checkoutHeadingThreee"
                                                 data-parent="#checkoutAccordion">
                                                <div id="payment" class="woocommerce-checkout-payment">
                                                    <ul class="wc_payment_methods payment_methods methods">
                                                        <li class="wc_payment_method payment_method_cheque">
                                                            <input id="payment_method_cheque" type="radio"
                                                                   class="input-radio" name="payment_method"
                                                                   value="cheque" data-order_button_text="">
                                                            <div>
                                                                <label for="payment_method_cheque">Pay with
                                                                    VNPAY </label>
                                                            </div>
                                                            <div class="button alt btn btn-dark btn-block rounded-0 py-4"
                                                                 style="width: 50%;">
                                                                <input type="hidden" name="idOrder" value="${cart.id}">
                                                                <input type="hidden" name="totalPrice"
                                                                       value="${cart.totalPrices}">
                                                                <a type="submit"
                                                                   href="<c:url value='/user/api/payment/?idOrder=${cart.id}&totalPrice=${cart.totalPrices}'/>">Click
                                                                    here to pay!</a>
                                                            </div>
                                                        </li>

                                                        <li class="wc_payment_method payment_method_cod">
                                                            <input id="payment_method_cod" type="radio"
                                                                   class="input-radio" name="payment_method" value="cod"
                                                                   checked="checked" data-order_button_text="">

                                                            <label for="payment_method_cod">Cash on delivery </label>
                                                            <div class="payment_box payment_method_cod"
                                                                 style="display: block;">
                                                                <p>Pay with cash upon delivery.</p>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row place-order">
                                        <%--                                        <input href="<c:url value='/user/save-order'/>" type="submit" class="button alt btn btn-dark btn-block rounded-0 py-4" name="woocommerce_checkout_place_order" id="place_order" value="Place order" data-value="Place order">--%>
                                        <div class="button alt btn btn-dark btn-block rounded-0 py-4"><a
                                                href="<c:url value='/user/save-order'/>"/>Place Order
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- .entry-content -->
                </article>
                <!-- #post-## -->
            </main>
            <!-- #main -->
        </div>
        <!-- #primary -->
    </div>
    <!-- .col-full -->
</div>
</body>
</html>
