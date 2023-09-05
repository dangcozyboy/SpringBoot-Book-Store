<%@ page import="com.DakiBookStore.util.SecurityUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!--===== HEADER CONTENT =====-->
<header id="site-header" class="site-header__v1">
  <div class="topbar border-bottom d-none d-md-block">
    <div class="container-fluid px-2 px-md-5 px-xl-8d75">
      <div class="topbar__nav d-md-flex justify-content-between align-items-center">
        <ul class="topbar__nav--left nav ml-md-n3">
          <li class="nav-item"><a href="#" class="nav-link link-black-100"><i class="glph-icon flaticon-question mr-2"></i>Can we help you?</a></li>
          <li class="nav-item"><a href="tel:+1246-345-0695" class="nav-link link-black-100"><i class="glph-icon flaticon-phone mr-2"></i>+84 886-616-887</a></li>
        </ul>
        <ul class="topbar__nav--right nav mr-md-n3">
          <li class="nav-item"><a href="#" class="nav-link link-black-100"><i class="glph-icon flaticon-pin"></i></a></li>
          <li class="nav-item"><a href="#" class="nav-link link-black-100"><i class="glph-icon flaticon-switch"></i></a></li>
          <li class="nav-item"><a href="#" class="nav-link link-black-100"><i class="glph-icon flaticon-heart"></i></a></li>
          <li class="nav-item">
            <sec:authorize access="isAnonymous()">
              <a href="<c:url value='/login'/>" class="nav-link link-black-100"><i class="glph-icon flaticon-user"></i></a>
            </sec:authorize>
            <sec:authorize access="isAuthenticated()">
              <a class="nav-link link-black-100" href="<c:url value='/user/detailsAccount/${SecurityUtils.getMyUserDetail().getUsername()}'/>">Welcome <%=SecurityUtils.getMyUserDetail().getFullName()%></a>
            </sec:authorize>
          </li>
          <li class="nav-item">
            <!-- Cart Sidebar Toggle Button -->
            <a id="sidebarNavToggler1" href="javascript:;" role="button" class="nav-link link-black-100 position-relative"
               aria-controls="sidebarContent1"
               aria-haspopup="true"
               aria-expanded="false"
               data-unfold-event="click"
               data-unfold-hide-on-scroll="false"
               data-unfold-target="#sidebarContent1"
               data-unfold-type="css-animation"
               data-unfold-overlay='{
                                    "className": "u-sidebar-bg-overlay",
                                    "background": "rgba(0, 0, 0, .7)",
                                    "animationSpeed": 500
                                }'
               data-unfold-animation-in="fadeInRight"
               data-unfold-animation-out="fadeOutRight"
               data-unfold-duration="500">
              <span class="position-absolute bg-dark width-16 height-16 rounded-circle d-flex align-items-center justify-content-center text-white font-size-n9 right-0"><c:out value="${sessionScope.myCartNum}"/></span>
              <i class="glph-icon flaticon-icon-126515"></i>
            </a>
            <!-- End Cart Sidebar Toggle Button -->
          </li>
        </ul>
      </div>
    </div>
  </div>
  <div class="masthead border-bottom position-relative" style="margin-bottom: -1px;">
    <div class="container-fluid px-3 px-md-5 px-xl-8d75 py-2 py-md-0">
      <div class="d-flex align-items-center position-relative flex-wrap">
        <div class="offcanvas-toggler mr-4 mr-lg-8">
          <a id="sidebarNavToggler2" href="javascript:;" role="button" class="cat-menu"
             aria-controls="sidebarContent2"
             aria-haspopup="true"
             aria-expanded="false"
             data-unfold-event="click"
             data-unfold-hide-on-scroll="false"
             data-unfold-target="#sidebarContent2"
             data-unfold-type="css-animation"
             data-unfold-overlay='{
                            "className": "u-sidebar-bg-overlay",
                            "background": "rgba(0, 0, 0, .7)",
                            "animationSpeed": 100
                        }'
             data-unfold-animation-in="fadeInLeft"
             data-unfold-animation-out="fadeOutLeft"
             data-unfold-duration="100">
            <svg width="20px" height="18px">
              <path fill-rule="evenodd"  fill="rgb(25, 17, 11)" d="M-0.000,-0.000 L20.000,-0.000 L20.000,2.000 L-0.000,2.000 L-0.000,-0.000 Z"/>
              <path fill-rule="evenodd"  fill="rgb(25, 17, 11)" d="M-0.000,8.000 L15.000,8.000 L15.000,10.000 L-0.000,10.000 L-0.000,8.000 Z"/>
              <path fill-rule="evenodd"  fill="rgb(25, 17, 11)" d="M-0.000,16.000 L20.000,16.000 L20.000,18.000 L-0.000,18.000 L-0.000,16.000 Z"/>
            </svg>
          </a>
        </div>
        <div class="site-branding pr-md-4">
          <a href="<c:url value="/user"/>" class="d-block mb-1" >
          <img src="/DakiBookStore_war_exploded/SingleProduct/LogoDakiBook/DAKI_BOOK.png" style="max-height: 46px;
    width: auto;" alt="">
          </a>
        </div>
        <div class="site-navigation mr-auto d-none d-xl-block">
          <ul class="nav">
            <li class="nav-item"><a href="<c:url value="/user"/>" class="nav-link link-black-100 mx-4 px-0 py-5 font-weight-medium active border-bottom border-primary border-width-2">Trang chủ</a></li>
            <li class="nav-item"><a href="<c:url value="/user/ShopList"/>" class="nav-link link-black-100 mx-4 px-0 py-5 font-weight-medium active border-bottom border-primary border-width-2">Danh mục sách</a></li>
            <li class="nav-item"><a href="<c:url value='/user/blog'/>" class="nav-link link-black-100 mx-4 px-0 py-5 font-weight-medium active border-bottom border-primary border-width-2">Blog</a></li>
            <li class="nav-item"><a href="#" class="nav-link link-black-100 mx-4 px-0 py-5 font-weight-medium active border-bottom border-primary border-width-2">Best seller</a></li>
<%--            <li class="nav-item dropdown">--%>
<%--              <a id="blogDropdownInvoker" href="#" class="dropdown-toggle nav-link link-black-100 mx-4 px-0 py-5 font-weight-medium d-flex align-items-center"--%>
<%--                 aria-haspopup="true"--%>
<%--                 aria-expanded="false"--%>
<%--                 data-unfold-event="hover"--%>
<%--                 data-unfold-target="#blogDropdownMenu"--%>
<%--                 data-unfold-type="css-animation"--%>
<%--                 data-unfold-duration="200"--%>
<%--                 data-unfold-delay="50"--%>
<%--                 data-unfold-hide-on-scroll="true"--%>
<%--                 data-unfold-animation-in="slideInUp"--%>
<%--                 data-unfold-animation-out="fadeOut">--%>
<%--                Blog--%>
<%--              </a>--%>
<%--              <ul id="blogDropdownMenu" class="dropdown-unfold dropdown-menu font-size-2 rounded-0 border-gray-900" aria-labelledby="blogDropdownInvoker">--%>
<%--                <li><a href="<c:url value='/user/blog'/>" class="dropdown-item link-black-100">Blog v1</a></li>--%>
<%--                <li><a href="../blog/blog-v2.html" class="dropdown-item link-black-100">Blog v2</a></li>--%>
<%--                <li><a href="../blog/blog-v3.html" class="dropdown-item link-black-100">Blog v3</a></li>--%>
<%--                <li><a href="../blog/blog-single.html" class="dropdown-item link-black-100">Blog Single</a></li>--%>
<%--              </ul>--%>
<%--            </li>--%>
<%--            <li class="nav-item dropdown">--%>
<%--              <a id="pagesDropdownInvoker" href="#" class="dropdown-toggle nav-link link-black-100 mx-4 px-0 py-5 font-weight-medium d-flex align-items-center"--%>
<%--                 aria-haspopup="true"--%>
<%--                 aria-expanded="false"--%>
<%--                 data-unfold-event="hover"--%>
<%--                 data-unfold-target="#pagesDropdownMenu"--%>
<%--                 data-unfold-type="css-animation"--%>
<%--                 data-unfold-duration="200"--%>
<%--                 data-unfold-delay="50"--%>
<%--                 data-unfold-hide-on-scroll="true"--%>
<%--                 data-unfold-animation-in="slideInUp"--%>
<%--                 data-unfold-animation-out="fadeOut">--%>
<%--                Others--%>
<%--              </a>--%>
<%--              <ul id="pagesDropdownMenu" class="dropdown-unfold dropdown-menu font-size-2 rounded-0 border-gray-900" aria-labelledby="pagesDropdownInvoker">--%>
<%--                <li><a href="../others/404.html" class="dropdown-item link-black-100">404</a></li>--%>
<%--                <li><a href="../others/about.html" class="dropdown-item link-black-100">About Us</a></li>--%>
<%--                <li><a href="../others/authors-list.html" class="dropdown-item link-black-100">Authors List</a></li>--%>
<%--                <li><a href="../others/authors-single.html" class="dropdown-item link-black-100">Authors Single</a></li>--%>
<%--                <li><a href="../others/coming-soon.html" class="dropdown-item link-black-100">Coming Soon</a></li>--%>
<%--                <li><a href="../others/contact.html" class="dropdown-item link-black-100">Contact Us</a></li>--%>
<%--                <li><a href="../others/faq.html" class="dropdown-item link-black-100">FAQ</a></li>--%>
<%--                <li><a href="../others/pricing-table.html" class="dropdown-item link-black-100">Pricing Table</a></li>--%>
<%--                <li><a href="../others/terms-conditions.html" class="dropdown-item link-black-100">Terms Conditions</a></li>--%>
<%--              </ul>--%>
<%--            </li>--%>
          </ul>
        </div>

        <ul class="d-md-none nav mr-md-n3 ml-auto">
          <li class="nav-item">
            <!-- Account Sidebar Toggle Button - Mobile -->
            <a id="sidebarNavToggler9" href="javascript:;" role="button" class="px-2 nav-link link-black-100"
               aria-controls="sidebarContent9"
               aria-haspopup="true"
               aria-expanded="false"
               data-unfold-event="click"
               data-unfold-hide-on-scroll="false"
               data-unfold-target="#sidebarContent9"
               data-unfold-type="css-animation"
               data-unfold-overlay='{
                                    "className": "u-sidebar-bg-overlay",
                                    "background": "rgba(0, 0, 0, .7)",
                                    "animationSpeed": 500
                                }'
               data-unfold-animation-in="fadeInRight"
               data-unfold-animation-out="fadeOutRight"
               data-unfold-duration="500">
              <i class="glph-icon flaticon-user"></i>
            </a>
            <!-- End Account Sidebar Toggle Button - Mobile -->
          </li>
        </ul>

        <div class="site-search ml-xl-0 ml-md-auto w-r-100 my-2 my-xl-0">
          <form class="form-inline" action="/DakiBookStore_war_exploded/user/search" method="get">
            <div class="input-group">
              <div class="input-group-prepend">
                <i class="glph-icon flaticon-loupe input-group-text py-2d75 bg-white-100 border-white-100"></i>
              </div>
              <input class="form-control bg-white-100 min-width-380 py-2d75 height-4 border-white-100" type="search" placeholder="Nhập tên sách mong muốn ..."
                     aria-label="Search" name="keyword">
            </div>
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit" >Search</button>
          </form>
        </div>
      </div>
    </div>
  </div>
</header>
<!-- Account Sidebar Navigation - Mobile -->
<aside id="sidebarContent9" class="u-sidebar u-sidebar__lg" aria-labelledby="sidebarNavToggler9">
  <div class="u-sidebar__scroller">
    <div class="u-sidebar__container">
      <div class="u-header-sidebar__footer-offset">
        <!-- Toggle Button -->
        <div class="d-flex align-items-center position-absolute top-0 right-0 z-index-2 mt-5 mr-md-6 mr-4">
          <button type="button" class="close ml-auto"
                  aria-controls="sidebarContent9"
                  aria-haspopup="true"
                  aria-expanded="false"
                  data-unfold-event="click"
                  data-unfold-hide-on-scroll="false"
                  data-unfold-target="#sidebarContent9"
                  data-unfold-type="css-animation"
                  data-unfold-animation-in="fadeInRight"
                  data-unfold-animation-out="fadeOutRight"
                  data-unfold-duration="500">
            <span aria-hidden="true">Close <i class="fas fa-times ml-2"></i></span>
          </button>
        </div>
        <!-- End Toggle Button -->

        <!-- Content -->
        <div class="js-scrollbar u-sidebar__body">
          <div class="u-sidebar__content u-header-sidebar__content">
            <form class="">
              <!-- Login -->
              <div id="login1" data-target-group="idForm1">
                <!-- Title -->
                <header class="border-bottom px-4 px-md-6 py-4">
                  <h2 class="font-size-3 mb-0 d-flex align-items-center"><i class="flaticon-user mr-3 font-size-5"></i>Account</h2>
                </header>
                <!-- End Title -->

                <div class="p-4 p-md-6">
                  <!-- Form Group -->
                  <div class="form-group mb-4">
                    <div class="js-form-message js-focus-state">
                      <label id="signinEmailLabel9" class="form-label" for="signinEmail9">Username or email *</label>
                      <input type="email" class="form-control rounded-0 height-4 px-4" name="email" id="signinEmail9" placeholder="creativelayers088@gmail.com" aria-label="creativelayers088@gmail.com" aria-describedby="signinEmailLabel9" required>
                    </div>
                  </div>
                  <!-- End Form Group -->

                  <!-- Form Group -->
                  <div class="form-group mb-4">
                    <div class="js-form-message js-focus-state">
                      <label id="signinPasswordLabel9" class="form-label" for="signinPassword9">Password *</label>
                      <input type="password" class="form-control rounded-0 height-4 px-4" name="password" id="signinPassword9" placeholder="" aria-label="" aria-describedby="signinPasswordLabel9" required>
                    </div>
                  </div>
                  <!-- End Form Group -->

                  <div class="d-flex justify-content-between mb-5 align-items-center">
                    <!-- Checkbox -->
                    <div class="js-form-message">
                      <div class="custom-control custom-checkbox d-flex align-items-center text-muted">
                        <input type="checkbox" class="custom-control-input" id="termsCheckbox1" name="termsCheckbox1" required>
                        <label class="custom-control-label" for="termsCheckbox1">
                                                        <span class="font-size-2 text-secondary-gray-700">
                                                            Remember me
                                                        </span>
                        </label>
                      </div>
                    </div>
                    <!-- End Checkbox -->

                    <a class="js-animation-link text-dark font-size-2 t-d-u link-muted font-weight-medium" href="javascript:;"
                       data-target="#forgotPassword1"
                       data-link-group="idForm1"
                       data-animation-in="fadeIn">Forgot Password?</a>
                  </div>

                  <div class="mb-4d75">
                    <button type="submit" class="btn btn-block py-3 rounded-0 btn-dark">Sign In</button>
                  </div>

                  <div class="mb-2">
                    <a href="javascript:;" class="js-animation-link btn btn-block py-3 rounded-0 btn-outline-dark font-weight-medium"
                       data-target="#signup1"
                       data-link-group="idForm1"
                       data-animation-in="fadeIn">Create Account</a>
                  </div>
                </div>
              </div>

              <!-- Signup -->
              <div id="signup1" style="display: none; opacity: 0;" data-target-group="idForm1">
                <!-- Title -->
                <header class="border-bottom px-4 px-md-6 py-4">
                  <h2 class="font-size-3 mb-0 d-flex align-items-center"><i class="flaticon-resume mr-3 font-size-5"></i>Create Account</h2>
                </header>
                <!-- End Title -->

                <div class="p-4 p-md-6">
                  <!-- Form Group -->
                  <div class="form-group mb-4">
                    <div class="js-form-message js-focus-state">
                      <label id="signinEmailLabel11" class="form-label" for="signinEmail11">Email *</label>
                      <input type="email" class="form-control rounded-0 height-4 px-4" name="email" id="signinEmail11" placeholder="creativelayers088@gmail.com" aria-label="creativelayers088@gmail.com" aria-describedby="signinEmailLabel11" required>
                    </div>
                  </div>
                  <!-- End Form Group -->

                  <!-- Form Group -->
                  <div class="form-group mb-4">
                    <div class="js-form-message js-focus-state">
                      <label id="signinPasswordLabel11" class="form-label" for="signinPassword11">Password *</label>
                      <input type="password" class="form-control rounded-0 height-4 px-4" name="password" id="signinPassword11" placeholder="" aria-label="" aria-describedby="signinPasswordLabel11" required>
                    </div>
                  </div>
                  <!-- End Form Group -->

                  <!-- Form Group -->
                  <div class="form-group mb-4">
                    <div class="js-form-message js-focus-state">
                      <label id="signupConfirmPasswordLabel9" class="form-label" for="signupConfirmPassword9">Confirm Password *</label>
                      <input type="password" class="form-control rounded-0 height-4 px-4" name="confirmPassword" id="signupConfirmPassword9" placeholder="" aria-label="" aria-describedby="signupConfirmPasswordLabel9" required>
                    </div>
                  </div>
                  <!-- End Input -->

                  <div class="mb-3">
                    <button type="submit" class="btn btn-block py-3 rounded-0 btn-dark">Create Account</button>
                  </div>

                  <div class="text-center mb-4">
                    <span class="small text-muted">Already have an account?</span>
                    <a class="js-animation-link small" href="javascript:;"
                       data-target="#login1"
                       data-link-group="idForm1"
                       data-animation-in="fadeIn">Login
                    </a>
                  </div>
                </div>
              </div>
              <!-- End Signup -->

              <!-- Forgot Password -->
              <div id="forgotPassword1" style="display: none; opacity: 0;" data-target-group="idForm1">
                <!-- Title -->
                <header class="border-bottom px-4 px-md-6 py-4">
                  <h2 class="font-size-3 mb-0 d-flex align-items-center"><i class="flaticon-question mr-3 font-size-5"></i>Forgot Password?</h2>
                </header>
                <!-- End Title -->

                <div class="p-4 p-md-6">
                  <!-- Form Group -->
                  <div class="form-group mb-4">
                    <div class="js-form-message js-focus-state">
                      <label id="signinEmailLabel33" class="form-label" for="signinEmail33">Email *</label>
                      <input type="email" class="form-control rounded-0 height-4 px-4" name="email" id="signinEmail33" placeholder="creativelayers088@gmail.com" aria-label="creativelayers088@gmail.com" aria-describedby="signinEmailLabel33" required>
                    </div>
                  </div>
                  <!-- End Form Group -->

                  <div class="mb-3">
                    <button type="submit" class="btn btn-block py-3 rounded-0 btn-dark">Recover Password</button>
                  </div>

                  <div class="text-center mb-4">
                    <span class="small text-muted">Remember your password?</span>
                    <a class="js-animation-link small" href="javascript:;"
                       data-target="#login1"
                       data-link-group="idForm1"
                       data-animation-in="fadeIn">Login
                    </a>
                  </div>
                </div>
              </div>
              <!-- End Forgot Password -->
            </form>
          </div>
        </div>
        <!-- End Content -->
      </div>
    </div>
  </div>
</aside>
<!-- End Account Sidebar Navigation - Mobile -->

<!-- Account Sidebar Navigation - Desktop -->
<aside id="sidebarContent" class="u-sidebar u-sidebar__lg" aria-labelledby="sidebarNavToggler">
  <div class="u-sidebar__scroller">
    <div class="u-sidebar__container">
      <div class="u-header-sidebar__footer-offset">
        <!-- Toggle Button -->
        <div class="d-flex align-items-center position-absolute top-0 right-0 z-index-2 mt-5 mr-md-6 mr-4">
          <button type="button" class="close ml-auto"
                  aria-controls="sidebarContent"
                  aria-haspopup="true"
                  aria-expanded="false"
                  data-unfold-event="click"
                  data-unfold-hide-on-scroll="false"
                  data-unfold-target="#sidebarContent"
                  data-unfold-type="css-animation"
                  data-unfold-animation-in="fadeInRight"
                  data-unfold-animation-out="fadeOutRight"
                  data-unfold-duration="500">
            <span aria-hidden="true">Close <i class="fas fa-times ml-2"></i></span>
          </button>
        </div>
        <!-- End Toggle Button -->

        <!-- Content -->
        <div class="js-scrollbar u-sidebar__body">
          <div class="u-sidebar__content u-header-sidebar__content">
            <form class="">
              <!-- Login -->
              <div id="login" data-target-group="idForm">
                <!-- Title -->
                <header class="border-bottom px-4 px-md-6 py-4">
                  <h2 class="font-size-3 mb-0 d-flex align-items-center"><i class="flaticon-user mr-3 font-size-5"></i>Account</h2>
                </header>
                <!-- End Title -->

                <div class="p-4 p-md-6">
                  <!-- Form Group -->
                  <div class="form-group mb-4">
                    <div class="js-form-message js-focus-state">
                      <label id="signinEmailLabel" class="form-label" for="signinEmail">Username or email *</label>
                      <input type="email" class="form-control rounded-0 height-4 px-4" name="email" id="signinEmail" placeholder="creativelayers088@gmail.com" aria-label="creativelayers088@gmail.com" aria-describedby="signinEmailLabel" required>
                    </div>
                  </div>
                  <!-- End Form Group -->

                  <!-- Form Group -->
                  <div class="form-group mb-4">
                    <div class="js-form-message js-focus-state">
                      <label id="signinPasswordLabel" class="form-label" for="signinPassword">Password *</label>
                      <input type="password" class="form-control rounded-0 height-4 px-4" name="password" id="signinPassword" placeholder="" aria-label="" aria-describedby="signinPasswordLabel" required>
                    </div>
                  </div>
                  <!-- End Form Group -->

                  <div class="d-flex justify-content-between mb-5 align-items-center">
                    <!-- Checkbox -->
                    <div class="js-form-message">
                      <div class="custom-control custom-checkbox d-flex align-items-center text-muted">
                        <input type="checkbox" class="custom-control-input" id="termsCheckbox" name="termsCheckbox" required>
                        <label class="custom-control-label" for="termsCheckbox">
                                                        <span class="font-size-2 text-secondary-gray-700">
                                                            Remember me
                                                        </span>
                        </label>
                      </div>
                    </div>
                    <!-- End Checkbox -->

                    <a class="js-animation-link text-dark font-size-2 t-d-u link-muted font-weight-medium" href="javascript:;"
                       data-target="#forgotPassword"
                       data-link-group="idForm"
                       data-animation-in="fadeIn">Forgot Password?</a>
                  </div>

                  <div class="mb-4d75">
                    <button type="submit" class="btn btn-block py-3 rounded-0 btn-dark">Sign In</button>
                  </div>

                  <div class="mb-2">
                    <a href="javascript:;" class="js-animation-link btn btn-block py-3 rounded-0 btn-outline-dark font-weight-medium"
                       data-target="#signup"
                       data-link-group="idForm"
                       data-animation-in="fadeIn">Create Account</a>
                  </div>
                </div>
              </div>

              <!-- Signup -->
              <div id="signup" style="display: none; opacity: 0;" data-target-group="idForm">
                <!-- Title -->
                <header class="border-bottom px-4 px-md-6 py-4">
                  <h2 class="font-size-3 mb-0 d-flex align-items-center"><i class="flaticon-resume mr-3 font-size-5"></i>Create Account</h2>
                </header>
                <!-- End Title -->

                <div class="p-4 p-md-6">
                  <!-- Form Group -->
                  <div class="form-group mb-4">
                    <div class="js-form-message js-focus-state">
                      <label id="signinEmailLabel1" class="form-label" for="signinEmail1">Email *</label>
                      <input type="email" class="form-control rounded-0 height-4 px-4" name="email" id="signinEmail1" placeholder="creativelayers088@gmail.com" aria-label="creativelayers088@gmail.com" aria-describedby="signinEmailLabel1" required>
                    </div>
                  </div>
                  <!-- End Form Group -->

                  <!-- Form Group -->
                  <div class="form-group mb-4">
                    <div class="js-form-message js-focus-state">
                      <label id="signinPasswordLabel1" class="form-label" for="signinPassword1">Password *</label>
                      <input type="password" class="form-control rounded-0 height-4 px-4" name="password" id="signinPassword1" placeholder="" aria-label="" aria-describedby="signinPasswordLabel1" required>
                    </div>
                  </div>
                  <!-- End Form Group -->

                  <!-- Form Group -->
                  <div class="form-group mb-4">
                    <div class="js-form-message js-focus-state">
                      <label id="signupConfirmPasswordLabel" class="form-label" for="signupConfirmPassword">Confirm Password *</label>
                      <input type="password" class="form-control rounded-0 height-4 px-4" name="confirmPassword" id="signupConfirmPassword" placeholder="" aria-label="" aria-describedby="signupConfirmPasswordLabel" required>
                    </div>
                  </div>
                  <!-- End Input -->

                  <div class="mb-3">
                    <button type="submit" class="btn btn-block py-3 rounded-0 btn-dark">Create Account</button>
                  </div>

                  <div class="text-center mb-4">
                    <span class="small text-muted">Already have an account?</span>
                    <a class="js-animation-link small" href="javascript:;"
                       data-target="#login"
                       data-link-group="idForm"
                       data-animation-in="fadeIn">Login
                    </a>
                  </div>
                </div>
              </div>
              <!-- End Signup -->

              <!-- Forgot Password -->
              <div id="forgotPassword" style="display: none; opacity: 0;" data-target-group="idForm">
                <!-- Title -->
                <header class="border-bottom px-4 px-md-6 py-4">
                  <h2 class="font-size-3 mb-0 d-flex align-items-center"><i class="flaticon-question mr-3 font-size-5"></i>Forgot Password?</h2>
                </header>
                <!-- End Title -->

                <div class="p-4 p-md-6">
                  <!-- Form Group -->
                  <div class="form-group mb-4">
                    <div class="js-form-message js-focus-state">
                      <label id="signinEmailLabel3" class="form-label" for="signinEmail3">Email *</label>
                      <input type="email" class="form-control rounded-0 height-4 px-4" name="email" id="signinEmail3" placeholder="creativelayers088@gmail.com" aria-label="creativelayers088@gmail.com" aria-describedby="signinEmailLabel3" required>
                    </div>
                  </div>
                  <!-- End Form Group -->

                  <div class="mb-3">
                    <button type="submit" class="btn btn-block py-3 rounded-0 btn-dark">Recover Password</button>
                  </div>

                  <div class="text-center mb-4">
                    <span class="small text-muted">Remember your password?</span>
                    <a class="js-animation-link small" href="javascript:;"
                       data-target="#login"
                       data-link-group="idForm"
                       data-animation-in="fadeIn">Login
                    </a>
                  </div>
                </div>
              </div>
              <!-- End Forgot Password -->
            </form>
          </div>
        </div>
        <!-- End Content -->
      </div>
    </div>
  </div>
</aside>
<!-- End Account Sidebar Navigation - Desktop -->

<!-- Cart Sidebar Navigation -->
<aside id="sidebarContent1" class="u-sidebar u-sidebar__xl" aria-labelledby="sidebarNavToggler1">
  <div class="u-sidebar__scroller js-scrollbar">
    <div class="u-sidebar__container">
      <div class="u-header-sidebar__footer-offset">
        <!-- Toggle Button -->
        <div class="d-flex align-items-center position-absolute top-0 right-0 z-index-2 mt-5 mr-md-6 mr-4">
          <button type="button" class="close ml-auto"
                  aria-controls="sidebarContent1"
                  aria-haspopup="true"
                  aria-expanded="false"
                  data-unfold-event="click"
                  data-unfold-hide-on-scroll="false"
                  data-unfold-target="#sidebarContent1"
                  data-unfold-type="css-animation"
                  data-unfold-animation-in="fadeInRight"
                  data-unfold-animation-out="fadeOutRight"
                  data-unfold-duration="500">
            <span aria-hidden="true">Close <i class="fas fa-times ml-2"></i></span>
          </button>
        </div>
        <!-- End Toggle Button -->

        <!-- Content -->
        <div class="u-sidebar__body">
          <div class="u-sidebar__content u-header-sidebar__content">
            <!-- Title -->
            <header class="border-bottom px-4 px-md-6 py-4">
              <h2 class="font-size-3 mb-0 d-flex align-items-center"><i class="flaticon-icon-126515 mr-3 font-size-5"></i><c:out value="${sessionScope.totalItems}"/></h2>
            </header>
            <!-- End Title -->
          <c:forEach var="carts" items="${sessionScope.cart.cartItem}">
            <div class="px-4 py-5 px-md-6 border-bottom">
              <div class="media">
                <a href="#" class="d-block"><img src="${pageContext.request.contextPath}${carts.book.picture.imagePath}" width="80" height="120" class="img-fluid" alt="image-description"></a>
                <div class="media-body ml-4d875">
                  <div class="text-primary text-uppercase font-size-1 mb-1 text-truncate"><a href="#">Hard Cover</a></div>
                  <h2 class="woocommerce-loop-product__title h6 text-lh-md mb-1 text-height-2 crop-text-2">
                    <a href="#" class="text-dark"><c:out value="${carts.book.name}"/></a>
                  </h2>
                  <div class="font-size-2 mb-1 text-truncate"><a href="#" class="text-gray-700"><c:out value="${carts.book.author.name}"/></a></div>
                  <div class="price d-flex align-items-center font-weight-medium font-size-3">
                    <span class="woocommerce-Price-amount amount"><c:out value="${carts.quantity}"/> x <span class="woocommerce-Price-currencySymbol">VND </span><c:out value="${carts.book.price}"/></span>
                  </div>
                </div>
                <div class="mt-3 ml-3">
                  <a href="#" class="text-dark"><i class="fas fa-times"></i></a>
                </div>
              </div>
            </div>
          </c:forEach>
<%--            <div class="px-4 py-5 px-md-6 d-flex justify-content-between align-items-center font-size-3">--%>
<%--              <h4 class="mb-0 font-size-3">Subtotal:</h4>--%>
<%--              <div class="font-weight-medium">$<c:out value="${sessionScope.cart.totalPrices}"/></div>--%>
<%--            </div>--%>

            <div class="px-4 mb-8 px-md-6">
              <button type="submit" class="btn btn-block py-4 rounded-0 btn-outline-dark mb-4"><a href="<c:url value="/user/cart"/>">View Cart</a></button>
<%--              <button type="submit" class="btn btn-block py-4 rounded-0 btn-dark">Checkout</button>--%>
            </div>
          </div>
        </div>
        <!-- End Content -->
      </div>
    </div>
  </div>
</aside>
<!-- End Cart Sidebar Navigation -->