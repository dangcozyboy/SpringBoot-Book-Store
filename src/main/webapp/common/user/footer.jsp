<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<footer>
    <div class="border-top space-top-3">
        <div class="border-bottom pb-5 space-bottom-lg-3">
            <div class="container">
                <!-- Newsletter -->
                <div class="space-bottom-2 space-bottom-md-3">
                    <div class="text-center mb-5">
                        <h5 class="font-size-7 font-weight-medium">Join Our Newsletter</h5>
                        <p class="text-gray-700">Signup to be the first to hear about exclusive deals, special offers
                            and upcoming collections</p>
                    </div>
                    <!-- Form Group -->
                    <div class="form-row justify-content-center">
                        <div class="col-md-5 mb-3 mb-md-2">
                            <div class="js-form-message">
                                <div class="input-group">
                                    <input type="text" class="form-control px-5 height-60 border-dark" name="name"
                                           id="signupSrName" placeholder="Enter email for weekly newsletter."
                                           aria-label="Your name" required="" data-msg="Name must contain only letters."
                                           data-error-class="u-has-error" data-success-class="u-has-success">
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-2 ml-md-2">
                            <button type="submit" class="btn btn-dark rounded-0 btn-wide py-3 font-weight-medium">
                                Subscribe
                            </button>
                        </div>
                    </div>
                    <!-- End Form Group -->
                </div>
                <!-- End  Newsletter -->
                <div class="row">
                    <div class="col-lg-4 mb-6 mb-lg-0">
                        <div class="pb-6">
                            <a href="<c:url value="/user"/>" class="d-block mb-1">
                                <img src="/DakiBookStore_war_exploded/SingleProduct/LogoDakiBook/DAKI_BOOK.png" style="max-height: 46px;
    width: auto;" alt="">
                            </a>
                            <address class="font-size-2 mb-5">
                                    <span class="mb-2 font-weight-normal text-dark">
                                        142 Đường 3/2, Phường Xuân Khánh, Ninh Kiều, Cần Thơ <br> United States
                                    </span>
                            </address>
                            <div class="mb-4">
                                <a href="" class="font-size-2 d-block link-black-100 mb-1">sale@dakibook.com</a>
                                <a href="tel:+84886-166-887" class="font-size-2 d-block link-black-100">+84
                                    886-166-887</a>
                            </div>
                            <ul class="list-unstyled mb-0 d-flex">
                                <li class="btn pl-0">
                                    <a class="link-black-100" href="#">
                                        <span class="fab fa-instagram"></span>
                                    </a>
                                </li>
                                <li class="btn">
                                    <a class="link-black-100" href="#">
                                        <span class="fab fa-facebook-f"></span>
                                    </a>
                                </li>
                                <li class="btn">
                                    <a class="link-black-100" href="#">
                                        <span class="fab fa-youtube"></span>
                                    </a>
                                </li>
                                <li class="btn">
                                    <a class="link-black-100" href="#">
                                        <span class="fab fa-twitter"></span>
                                    </a>
                                </li>
                                <li class="btn">
                                    <a class="link-black-100" href="#">
                                        <span class="fab fa-pinterest"></span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-2 mb-6 mb-lg-0">
                        <h4 class="font-size-3 font-weight-medium mb-2 mb-xl-5 pb-xl-1">Explore</h4>
                        <ul class="list-unstyled mb-0">
                            <li class="pb-2">
                                <a class="widgets-hover transition-3d-hover font-size-2 link-black-100"
                                   href="<c:url value='/user/aboutUs'/>">About as</a>
                            </li>
                            <%--              <li class="py-2">--%>
                            <%--                <a class="widgets-hover transition-3d-hover font-size-2 link-black-100" href="#">Sitemap</a>--%>
                            <%--              </li>--%>
                            <%--              <li class="py-2">--%>
                            <%--                <a class="widgets-hover transition-3d-hover font-size-2 link-black-100" href="#">Bookmarks</a>--%>
                            <%--              </li>--%>
                            <%--              <li class="pt-2">--%>
                            <%--                <a class="widgets-hover transition-3d-hover font-size-2 link-black-100" href="#">Sign in/Join</a>--%>
                            <%--              </li>--%>
                        </ul>
                    </div>
                    <div class="col-lg-2 mb-6 mb-lg-0">
                        <h4 class="font-size-3 font-weight-medium mb-2 mb-xl-5 pb-xl-1">Customer Service</h4>
                        <ul class="list-unstyled mb-0">
                            <li class="pb-2">
                                <a class="widgets-hover transition-3d-hover font-size-2 link-black-100"
                                   href="<c:url value='/user/helpCenter'/>">Help Center</a>
                            </li>
                            <%--              <li class="py-2">--%>
                            <%--                <a class="widgets-hover transition-3d-hover font-size-2 link-black-100" href="#">Returns</a>--%>
                            <%--              </li>--%>
                            <%--              <li class="py-2">--%>
                            <%--                <a class="widgets-hover transition-3d-hover font-size-2 link-black-100" href="#">Product Recalls</a>--%>
                            <%--              </li>--%>
                            <%--              <li class="py-2">--%>
                            <%--                <a class="widgets-hover transition-3d-hover font-size-2 link-black-100" href="#">Accessibility</a>--%>
                            <%--              </li>--%>
                            <li class="py-2">
                                <a class="widgets-hover transition-3d-hover font-size-2 link-black-100"
                                   href="<c:url value='/user/contactUs'/>">Contact Us</a>
                            </li>
                            <%--              <li class="pt-2">--%>
                            <%--                <a class="widgets-hover transition-3d-hover font-size-2 link-black-100" href="#">Store Pickup</a>--%>
                            <%--              </li>--%>
                        </ul>
                    </div>
                    <div class="col-lg-2 mb-6 mb-lg-0">
                        <h4 class="font-size-3 font-weight-medium mb-2 mb-xl-5 pb-xl-1">Policy</h4>
                        <ul class="list-unstyled mb-0">
                            <%--              <li class="pb-2">--%>
                            <%--                <a class="widgets-hover transition-3d-hover font-size-2 link-black-100" href="#">Return Policy</a>--%>
                            <%--              </li>--%>
                            <li class="py-2">
                                <a class="widgets-hover transition-3d-hover font-size-2 link-black-100"
                                   href="<c:url value='/user/termOfUse'/>">Terms Of Use</a>
                            </li>
                            <%--              <li class="py-2">--%>
                            <%--                <a class="widgets-hover transition-3d-hover font-size-2 link-black-100" href="#">Security</a>--%>
                            <%--              </li>--%>
                            <%--              <li class="pt-2">--%>
                            <%--                <a class="widgets-hover transition-3d-hover font-size-2 link-black-100" href="#">Privacy</a>--%>
                            <%--              </li>--%>
                        </ul>
                    </div>
                    <div class="col-lg-2 mb-6 mb-lg-0">
                        <h4 class="font-size-3 font-weight-medium mb-2 mb-xl-5 pb-xl-1">Categories</h4>
                        <ul class="list-unstyled mb-0">
                            <li class="pb-2">
                                <a class="widgets-hover transition-3d-hover font-size-2 link-black-100"
                                   href="#">Action</a>
                            </li>
                            <li class="py-2">
                                <a class="widgets-hover transition-3d-hover font-size-2 link-black-100"
                                   href="#">Comedy</a>
                            </li>
                            <li class="py-2">
                                <a class="widgets-hover transition-3d-hover font-size-2 link-black-100"
                                   href="#">Drama</a>
                            </li>
                            <li class="py-2">
                                <a class="widgets-hover transition-3d-hover font-size-2 link-black-100"
                                   href="#">Horror</a>
                            </li>
                            <li class="py-2">
                                <a class="widgets-hover transition-3d-hover font-size-2 link-black-100"
                                   href="#">Kids</a>
                            </li>
                            <li class="pt-2">
                                <a class="widgets-hover transition-3d-hover font-size-2 link-black-100" href="#">Romantic
                                    Comedy</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="space-1">
            <div class="container">
                <div class="d-lg-flex text-center text-lg-left justify-content-between align-items-center">
                    <!-- Copyright -->
                    <p class="mb-3 mb-lg-0 font-size-2">©2023 Daki Book Store. All rights reserved</p>
                    <!-- End Copyright -->

                    <div class="ml-auto d-lg-flex align-items-center">
                        <div class="mb-4 mb-lg-0 mr-5">
                            <img class="img-fluid" src="../../img/324x38/img1.png" alt="Image-Description">
                        </div>

                        <!-- Select -->
                        <select class="js-select selectpicker dropdown-select mb-3 mb-lg-0"
                                data-style="border px-4 py-2 rounded-0 height-5 outline-none shadow-none form-control font-size-2"
                                data-dropdown-align-right="true">
                            <option value="one" selected>English (United States)</option>
                            <option value="two">Deutsch</option>
                            <option value="three">Français</option>
                            <option value="four">Español</option>
                        </select>
                        <!-- End Select -->

                        <!-- Select -->
                        <select class="js-select selectpicker dropdown-select ml-md-3"
                                data-style="border px-4 py-2 rounded-0 height-5 outline-none shadow-none form-control font-size-2"
                                data-dropdown-align-right="true"
                                data-width="fit">
                            <option value="one" selected>$ USD</option>
                            <option value="two">€ EUR</option>
                            <option value="three">₺ TL</option>
                            <option value="four">₽ RUB</option>
                        </select>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>