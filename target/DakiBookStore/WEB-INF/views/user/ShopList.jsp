<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Daki Book Store</title>
</head>
<body>
<div class="site-content space-bottom-3" id="content">
    <div class="container">
        <div class="row">
            <div id="primary" class="content-area order-2" style="width: 60%; margin-left: 24px">
                <div class="shop-control-bar d-lg-flex justify-content-between align-items-center mb-5 text-center text-md-left">
                    <div class="shop-control-bar__left mb-4 m-lg-0">
                        <p class="woocommerce-result-count m-0">Showing 1–10 of ${countBook} results</p>
                    </div>
                    <div class="shop-control-bar__right d-md-flex align-items-center">
                        <form class="woocommerce-ordering mb-4 m-md-0" method="get">
                            <!-- Select -->
                            <select class="js-select selectpicker dropdown-select orderby" name="orderby"
                                    data-style="border-bottom shadow-none outline-none py-2">
                                <option value="popularity">Sort by popularity</option>
                                <option value="default" selected="selected">Default sorting</option>
                                <option value="date">Sort by newness</option>
                                <option value="price">Sort by price: low to high</option>
                                <option value="price-desc">Sort by price: high to low</option>
                            </select>
                            <!-- End Select -->
                        </form>

                        <form class="number-of-items ml-md-4 mb-4 m-md-0 d-none d-xl-block" method="get">
                            <!-- Select -->
                            <select class="js-select selectpicker dropdown-select orderby" name="orderby"
                                    data-style="border-bottom shadow-none outline-none py-2"
                                    data-width="fit">
                                <option value="show10">Show 10</option>
                                <option value="show15">Show 15</option>
                                <option value="show20" selected="selected">Show 20</option>
                                <option value="show25">Show 25</option>
                                <option value="show30">Show 30</option>
                            </select>
                            <!-- End Select -->
                        </form>

                        <ul class="nav nav-tab ml-lg-4 justify-content-center justify-content-md-start ml-md-auto"
                            id="pills-tab" role="tablist">
                            <li class="nav-item border">
                                <a class="nav-link p-0 height-38 width-38 justify-content-center d-flex align-items-center active"
                                   id="pills-one-example1-tab" data-toggle="pill" href="#pills-one-example1" role="tab"
                                   aria-controls="pills-one-example1" aria-selected="true">
                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                                         width="17px" height="17px">
                                        <path fill-rule="evenodd" fill="rgb(25, 17, 11)"
                                              d="M-0.000,0.000 L3.000,0.000 L3.000,3.000 L-0.000,3.000 L-0.000,0.000 Z"/>
                                        <path fill-rule="evenodd" fill="rgb(25, 17, 11)"
                                              d="M7.000,0.000 L10.000,0.000 L10.000,3.000 L7.000,3.000 L7.000,0.000 Z"/>
                                        <path fill-rule="evenodd" fill="rgb(25, 17, 11)"
                                              d="M14.000,0.000 L17.000,0.000 L17.000,3.000 L14.000,3.000 L14.000,0.000 Z"/>
                                        <path fill-rule="evenodd" fill="rgb(25, 17, 11)"
                                              d="M-0.000,7.000 L3.000,7.000 L3.000,10.000 L-0.000,10.000 L-0.000,7.000 Z"/>
                                        <path fill-rule="evenodd" fill="rgb(25, 17, 11)"
                                              d="M7.000,7.000 L10.000,7.000 L10.000,10.000 L7.000,10.000 L7.000,7.000 Z"/>
                                        <path fill-rule="evenodd" fill="rgb(25, 17, 11)"
                                              d="M14.000,7.000 L17.000,7.000 L17.000,10.000 L14.000,10.000 L14.000,7.000 Z"/>
                                        <path fill-rule="evenodd" fill="rgb(25, 17, 11)"
                                              d="M-0.000,14.000 L3.000,14.000 L3.000,17.000 L-0.000,17.000 L-0.000,14.000 Z"/>
                                        <path fill-rule="evenodd" fill="rgb(25, 17, 11)"
                                              d="M7.000,14.000 L10.000,14.000 L10.000,17.000 L7.000,17.000 L7.000,14.000 Z"/>
                                        <path fill-rule="evenodd" fill="rgb(25, 17, 11)"
                                              d="M14.000,14.000 L17.000,14.000 L17.000,17.000 L14.000,17.000 L14.000,14.000 Z"/>
                                    </svg>
                                </a>
                            </li>
                            <li class="nav-item border">
                                <a class="nav-link p-0 height-38 width-38 justify-content-center d-flex align-items-center"
                                   id="pills-two-example1-tab" data-toggle="pill" href="#pills-two-example1" role="tab"
                                   aria-controls="pills-two-example1" aria-selected="false">
                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                                         width="23px" height="17px">
                                        <path fill-rule="evenodd" fill="rgb(25, 17, 11)"
                                              d="M-0.000,0.000 L3.000,0.000 L3.000,3.000 L-0.000,3.000 L-0.000,0.000 Z"/>
                                        <path fill-rule="evenodd" fill="rgb(25, 17, 11)"
                                              d="M7.000,0.000 L23.000,0.000 L23.000,3.000 L7.000,3.000 L7.000,0.000 Z"/>
                                        <path fill-rule="evenodd" fill="rgb(25, 17, 11)"
                                              d="M-0.000,7.000 L3.000,7.000 L3.000,10.000 L-0.000,10.000 L-0.000,7.000 Z"/>
                                        <path fill-rule="evenodd" fill="rgb(25, 17, 11)"
                                              d="M7.000,7.000 L23.000,7.000 L23.000,10.000 L7.000,10.000 L7.000,7.000 Z"/>
                                        <path fill-rule="evenodd" fill="rgb(25, 17, 11)"
                                              d="M-0.000,14.000 L3.000,14.000 L3.000,17.000 L-0.000,17.000 L-0.000,14.000 Z"/>
                                        <path fill-rule="evenodd" fill="rgb(25, 17, 11)"
                                              d="M7.000,14.000 L23.000,14.000 L23.000,17.000 L7.000,17.000 L7.000,14.000 Z"/>
                                    </svg>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>

                <form action="<c:url value='/user/add-to-cart'/>" method="post">
                    <!-- Tab Content -->
                    <div class="tab-content" id="pills-tabContent">
                        <div class="tab-pane fade show active" id="pills-one-example1" role="tabpanel"
                             aria-labelledby="pills-one-example1-tab">
                            <!-- Mockup Block -->
                            <ul class="products list-unstyled row no-gutters row-cols-2 row-cols-lg-3 row-cols-wd-4 border-top border-left mb-6">
                                <c:forEach items="${List_book_paging.content}" var="books">
                                    <li class="product col">
                                        <div class="product__inner overflow-hidden p-3 p-md-4d875">
                                            <div class="woocommerce-LoopProduct-link woocommerce-loop-product__link d-block position-relative">
                                                <div class="woocommerce-loop-product__thumbnail">
                                                    <a href="<c:url value='/user/single-product/${books.id}'/>"
                                                       class="d-block"><img
                                                            src="${pageContext.request.contextPath}${books.picture.imagePath}"
                                                            class="img-fluid d-block mx-auto attachment-shop_catalog size-shop_catalog wp-post-image img-fluid"
                                                            alt="image-description"></a>
                                                </div>
                                                <div class="woocommerce-loop-product__body product__body pt-3 bg-white">
                                                    <div class="text-uppercase font-size-1 mb-1 text-truncate"><a
                                                            href="../shop/single-product-v1.html">Paperback</a></div>
                                                    <h2 class="woocommerce-loop-product__title product__title h6 text-lh-md mb-1 text-height-2 crop-text-2 h-dark">
                                                        <a href="<c:url value='/user/single-product/${books.id}'/>">${books.name}</a>
                                                    </h2>
                                                    <div class="font-size-2  mb-1 text-truncate"><a
                                                            href="../others/authors-single.html"
                                                            class="text-gray-700">${books.author.name}</a></div>
                                                    <div class="price d-flex align-items-center font-weight-medium font-size-3">
                                                        <span class="woocommerce-Price-amount amount"><span
                                                                class="woocommerce-Price-currencySymbol"></span>${books.formatVND(books.price)}</span>
                                                    </div>
                                                </div>
                                                <div class="product__hover d-flex align-items-center">
                                                    <div class="product__hover d-flex align-items-center">
                                                        <button type="submit" name="id" value="${books.id}"
                                                                class="text-uppercase text-dark h-dark font-weight-medium mr-auto btn-add-to-cart"
                                                                data-toggle="tooltip" data-placement="right" title=""
                                                                data-original-title="ADD TO CART">
                                                            <span class="product__add-to-cart"><i
                                                                    class="flaticon-icon-126515"></i></span>
                                                            <span class="product__add-to-cart-icon font-size-4"><i
                                                                    class="flaticon-icon-126515"></i></span>
                                                        </button>

                                                        <a href="../shop/single-product-v1.html"
                                                           class="mr-1 h-p-bg btn btn-outline-primary border-0">
                                                            <i class="flaticon-switch"></i>
                                                        </a>
                                                        <a href="../shop/single-product-v1.html"
                                                           class="h-p-bg btn btn-outline-primary border-0">
                                                            <i class="flaticon-heart"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </c:forEach>
                            </ul>
                            <!-- End Mockup Block -->
                        </div>
                    </div>
                </form>
                <!-- End Tab Content -->


                <nav aria-label="Page navigation example">
                    <ul class="pagination pagination__custom justify-content-md-center flex-nowrap flex-md-wrap overflow-auto overflow-md-visble">
                        <li class="flex-shrink-0 flex-md-shrink-1 page-item"><a class="page-link"
                                                                                href="/DakiBookStore_war_exploded/user/ShopList?p=0">First</a>
                        </li>
                        <li class="flex-shrink-0 flex-md-shrink-1 page-item"><a class="page-link"
                                                                                href="/DakiBookStore_war_exploded/user/ShopList?p=${List_book_paging.number - 1}">Previous</a>
                        </li>
                        <li class="flex-shrink-0 flex-md-shrink-1 page-item"><a class="page-link"
                                                                                href="/DakiBookStore_war_exploded/user/ShopList?p=${List_book_paging.number + 1}">Next</a>
                        </li>
                        <%--            <li class="flex-shrink-0 flex-md-shrink-1 page-item active" aria-current="page"><a class="page-link" href="#">3</a></li>--%>
                        <%--            <li class="flex-shrink-0 flex-md-shrink-1 page-item"><a class="page-link" href="#">4</a></li>--%>
                        <%--            <li class="flex-shrink-0 flex-md-shrink-1 page-item"><a class="page-link" href="#">5</a></li>--%>
                        <li class="flex-shrink-0 flex-md-shrink-1 page-item"><a class="page-link"
                                                                                href="/DakiBookStore_war_exploded/user/ShopList?p=${List_book_paging.totalPages - 1}">Last</a>
                        </li>
                    </ul>
                </nav>
            </div>
            <div id="secondary" class="sidebar widget-area order-1" role="complementary" style="width: 25%;">
                <div id="widgetAccordion">
                    <div id="woocommerce_product_categories-2"
                         class="widget p-4d875 border woocommerce widget_product_categories">
                        <div id="widgetHeadingOne" class="widget-head">
                            <a class="d-flex align-items-center justify-content-between text-dark" href="#"
                               data-toggle="collapse"
                               data-target="#widgetCollapseOne"
                               aria-expanded="true"
                               aria-controls="widgetCollapseOne">

                                <h3 class="widget-title mb-0 font-weight-medium font-size-3">Categories</h3>

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

                        <div id="widgetCollapseOne" class="mt-3 widget-content collapse show"
                             aria-labelledby="widgetHeadingOne"
                             data-parent="#widgetAccordion">
                            <ul class="product-categories">
                                <c:forEach items="${List_category}" var="categories">
                                <li class="cat-item cat-item-9 cat-parent">
                                    <a href="<c:url value='/user/ShopListByCategory/${categories.id}'/>">${categories.category}</a>
                                </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                    <div id="Authors" class="widget widget_search widget_author p-4d875 border">
                        <div id="widgetHeading21" class="widget-head">
                            <a class="d-flex align-items-center justify-content-between text-dark" href="#"
                               data-toggle="collapse"
                               data-target="#widgetCollapse21"
                               aria-expanded="true"
                               aria-controls="widgetCollapse21">

                                <h3 class="widget-title mb-0 font-weight-medium font-size-3">Author</h3>

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

                        <div id="widgetCollapse21" class="mt-4 widget-content collapse show"
                             aria-labelledby="widgetHeading21"
                             data-parent="#widgetAccordion">
                            <form class="form-inline my-2 overflow-hidden">
                                <div class="input-group flex-nowrap w-100">
                                    <div class="input-group-prepend">
                                    </div>
                                </div>
                            </form>
                            <ul class="product-categories">
                                <c:forEach items="${List_author}" var="authors">
                                <li class="cat-item cat-item-9 cat-parent">
                                    <a href="<c:url value='/user/ShopList/${authors.id}'/>">${authors.name}</a>
                                </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>


                    <div id="Featuredbooks" class="widget p-4d875 border">
                        <div id="widgetHeading25" class="widget-head">
                            <a class="d-flex align-items-center justify-content-between text-dark" href="#"
                               data-toggle="collapse"
                               data-target="#widgetCollapse25"
                               aria-expanded="true"
                               aria-controls="widgetCollapse25">

                                <h3 class="widget-title mb-0 font-weight-medium font-size-3">Featured Books</h3>

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

                        <div id="widgetCollapse25" class="mt-5 widget-content collapse show"
                             aria-labelledby="widgetHeading25"
                             data-parent="#widgetAccordion">
                            <div class="mb-5">
                                <div class="media d-md-flex">
                                    <a class="d-block" href="../shop/single-product-v3.html">
                                        <img class="img-fluid" src="https://placehold.it/60x92" alt="Image-Description">
                                    </a>
                                    <div class="media-body ml-3 pl-1">
                                        <h6 class="font-size-2 text-lh-md font-weight-normal">
                                            <a href="../shop/single-product-v3.html">Lessons Learned from 15 Years as
                                                CEO...</a>
                                        </h6>
                                        <span class="font-weight-medium">$37</span>
                                    </div>
                                </div>
                            </div>
                            <div class="mb-5">
                                <div class="media d-md-flex">
                                    <a class="d-block" href="../shop/single-product-v3.html">
                                        <img class="img-fluid" src="https://placehold.it/60x92" alt="Image-Description">
                                    </a>
                                    <div class="media-body ml-3 pl-1">
                                        <h6 class="font-size-2 text-lh-md font-weight-normal">
                                            <a href="../shop/single-product-v3.html">Love, Livestock, and Big Life
                                                Lessons...</a>
                                        </h6>
                                        <span class="font-weight-medium">$21</span>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <div class="media d-md-flex">
                                    <a class="d-block" href="../shop/single-product-v3.html">
                                        <img class="img-fluid" src="https://placehold.it/60x92" alt="Image-Description">
                                    </a>
                                    <div class="media-body ml-3 pl-1">
                                        <h6 class="font-size-2 text-lh-md font-weight-normal">
                                            <a href="../shop/single-product-v3.html">Sleeper Cells, Ghost Stories, and
                                                Hunt...</a>
                                        </h6>
                                        <span class="font-weight-medium">$182</span>
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
