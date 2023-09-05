<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<html>
<head>
    <title>About us</title>
</head>
<body>

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
              <h2 class="font-size-3 mb-0 d-flex align-items-center"><i class="flaticon-icon-126515 mr-3 font-size-5"></i>Your shopping bag (3)</h2>
            </header>
            <!-- End Title -->

            <div class="px-4 py-5 px-md-6 border-bottom">
              <div class="media">
                <a href="#" class="d-block"><img src="https://placehold.it/100x153" class="img-fluid" alt="image-description"></a>
                <div class="media-body ml-4d875">
                  <div class="text-primary text-uppercase font-size-1 mb-1 text-truncate"><a href="#">Hard Cover</a></div>
                  <h2 class="woocommerce-loop-product__title h6 text-lh-md mb-1 text-height-2 crop-text-2">
                    <a href="#" class="text-dark">The Ride of a Lifetime: Lessons Learned  from 15 Years as CEO</a>
                  </h2>
                  <div class="font-size-2 mb-1 text-truncate"><a href="#" class="text-gray-700">Robert Iger</a></div>
                  <div class="price d-flex align-items-center font-weight-medium font-size-3">
                    <span class="woocommerce-Price-amount amount">1 x <span class="woocommerce-Price-currencySymbol">$</span>125.30</span>
                  </div>
                </div>
                <div class="mt-3 ml-3">
                  <a href="#" class="text-dark"><i class="fas fa-times"></i></a>
                </div>
              </div>
            </div>

            <div class="px-4 py-5 px-md-6 border-bottom">
              <div class="media">
                <a href="#" class="d-block"><img src="https://placehold.it/100x153" class="img-fluid" alt="image-description"></a>
                <div class="media-body ml-4d875">
                  <div class="text-primary text-uppercase font-size-1 mb-1 text-truncate"><a href="#">Hard Cover</a></div>
                  <h2 class="woocommerce-loop-product__title h6 text-lh-md mb-1 text-height-2 crop-text-2">
                    <a href="#" class="text-dark">The Rural Diaries: Love, Livestock, and  Big Life Lessons Down</a>
                  </h2>
                  <div class="font-size-2 mb-1 text-truncate"><a href="#" class="text-gray-700">Hillary Burton</a></div>
                  <div class="price d-flex align-items-center font-weight-medium font-size-3">
                    <span class="woocommerce-Price-amount amount">2 x <span class="woocommerce-Price-currencySymbol">$</span>200</span>
                  </div>
                </div>
                <div class="mt-3 ml-3">
                  <a href="#" class="text-dark"><i class="fas fa-times"></i></a>
                </div>
              </div>
            </div>

            <div class="px-4 py-5 px-md-6 border-bottom">
              <div class="media">
                <a href="#" class="d-block"><img src="https://placehold.it/100x153" class="img-fluid" alt="image-description"></a>
                <div class="media-body ml-4d875">
                  <div class="text-primary text-uppercase font-size-1 mb-1 text-truncate"><a href="#">Paperback</a></div>
                  <h2 class="woocommerce-loop-product__title h6 text-lh-md mb-1 text-height-2 crop-text-2">
                    <a href="#" class="text-dark">Russians Among Us: Sleeper Cells,  Ghost Stories, and the Hunt.</a>
                  </h2>
                  <div class="font-size-2 mb-1 text-truncate"><a href="#" class="text-gray-700">Gordon Corera</a></div>
                  <div class="price d-flex align-items-center font-weight-medium font-size-3">
                    <span class="woocommerce-Price-amount amount">6 x <span class="woocommerce-Price-currencySymbol">$</span>100</span>
                  </div>
                </div>
                <div class="mt-3 ml-3">
                  <a href="#" class="text-dark"><i class="fas fa-times"></i></a>
                </div>
              </div>
            </div>

            <div class="px-4 py-5 px-md-6 d-flex justify-content-between align-items-center font-size-3">
              <h4 class="mb-0 font-size-3">Subtotal:</h4>
              <div class="font-weight-medium">$750.00</div>
            </div>

            <div class="px-4 mb-8 px-md-6">
              <button type="submit" class="btn btn-block py-4 rounded-0 btn-outline-dark mb-4">View Cart</button>
              <button type="submit" class="btn btn-block py-4 rounded-0 btn-dark">Checkout</button>
            </div>
          </div>
        </div>
        <!-- End Content -->
      </div>
    </div>
  </div>
</aside>
<!-- End Cart Sidebar Navigation -->

<!-- Categories Sidebar Navigation -->
<aside id="sidebarContent2" class="u-sidebar u-sidebar__md u-sidebar--left" aria-labelledby="sidebarNavToggler2">
  <div class="u-sidebar__scroller js-scrollbar">
    <div class="u-sidebar__container">
      <div class="u-header-sidebar__footer-offset">
        <!-- Content -->
        <div class="u-sidebar__body">
          <div class="u-sidebar__content u-header-sidebar__content">
            <!-- Title -->
            <header class="border-bottom px-4 px-md-5 py-4 d-flex align-items-center justify-content-between">
              <h2 class="font-size-3 mb-0">SHOP BY CATEGORY</h2>

              <!-- Toggle Button -->
              <div class="d-flex align-items-center">
                <button type="button" class="close ml-auto"
                        aria-controls="sidebarContent2"
                        aria-haspopup="true"
                        aria-expanded="false"
                        data-unfold-event="click"
                        data-unfold-hide-on-scroll="false"
                        data-unfold-target="#sidebarContent2"
                        data-unfold-type="css-animation"
                        data-unfold-animation-in="fadeInLeft"
                        data-unfold-animation-out="fadeOutLeft"
                        data-unfold-duration="500">
                  <span aria-hidden="true"><i class="fas fa-times ml-2"></i></span>
                </button>
              </div>
              <!-- End Toggle Button -->
            </header>
            <!-- End Title -->

            <div class="border-bottom">
              <div class="zeynep pt-4">
                <ul>
                  <li class="has-submenu">
                    <a href="#" data-submenu="off-pages">Pages</a>

                    <div id="off-pages" class="submenu">
                      <div class="submenu-header" data-submenu-close="off-pages">
                        <a href="#">Pages</a>
                      </div>

                      <ul>
                        <li class="has-submenu">
                          <a href="#" data-submenu="off-home">Home Pages</a>

                          <div id="off-home" class="submenu js-scrollbar">
                            <div class="submenu-header" data-submenu-close="off-home">
                              <a href="#">Home Pages</a>
                            </div>

                            <ul class="">
                              <li>
                                <a href="../home/index.html">Home v1</a>
                              </li>

                              <li>
                                <a href="../home/home-v2.html">Home v2</a>
                              </li>

                              <li>
                                <a href="../home/home-v3.html">Home v2</a>
                              </li>

                              <li>
                                <a href="../home/home-v3.html">Home v3</a>
                              </li>

                              <li>
                                <a href="../home/home-v4.html">Home v4</a>
                              </li>

                              <li>
                                <a href="../home/home-v5.html">Home v5</a>
                              </li>

                              <li>
                                <a href="../home/home-v6.html">Home v6</a>
                              </li>

                              <li>
                                <a href="../home/home-v7.html">Home v7</a>
                              </li>

                              <li>
                                <a href="../home/home-v8.html">Home v8</a>
                              </li>

                              <li>
                                <a href="../home/home-v9.html">Home v9</a>
                              </li>

                              <li>
                                <a href="../home/home-v10.html">Home v10</a>
                              </li>

                              <li>
                                <a href="../home/home-v11.html">Home v11</a>
                              </li>

                              <li>
                                <a href="../home/home-v12.html">Home v12</a>
                              </li>

                              <li>
                                <a href="../home/home-v13.html">Home v13</a>
                              </li>
                            </ul>
                          </div>
                        </li>

                        <li class="has-submenu">
                          <a href="#" data-submenu="off-single-product">Single Product</a>

                          <div id="off-single-product" class="submenu js-scrollbar">
                            <div class="submenu-header" data-submenu-close="off-single-product">
                              <a href="#">Single Product</a>
                            </div>

                            <ul class="">
                              <li>
                                <a href="../shop/single-product-v1.html">Single Product v1</a>
                              </li>

                              <li>
                                <a href="../shop/single-product-v2.html">Single Product v2</a>
                              </li>

                              <li>
                                <a href="../shop/single-product-v3.html">Single Product v3</a>
                              </li>

                              <li>
                                <a href="../shop/single-product-v4.html">Single Product v4</a>
                              </li>

                              <li>
                                <a href="../shop/single-product-v5.html">Single Product v5</a>
                              </li>

                              <li>
                                <a href="../shop/single-product-v6.html">Single Product v6</a>
                              </li>

                              <li>
                                <a href="../shop/single-product-v7.html">Single Product v7</a>
                              </li>
                            </ul>
                          </div>
                        </li>

                        <li class="has-submenu">
                          <a href="#" data-submenu="off-shop-pages">Shop Pages</a>

                          <div id="off-shop-pages" class="submenu js-scrollbar">
                            <div class="submenu-header" data-submenu-close="off-shop-pages">
                              <a href="#">Shop Pages</a>
                            </div>

                            <ul class="">
                              <li>
                                <a href="../shop/cart.html">Shop cart</a>
                              </li>

                              <li>
                                <a href="../shop/checkout.html">Shop checkout</a>
                              </li>

                              <li>
                                <a href="../shop/my-account.html">Shop My Account</a>
                              </li>

                              <li>
                                <a href="../shop/order-received.html">Shop Order Received</a>
                              </li>

                              <li>
                                <a href="../shop/order-tracking.html">Shop Order Tracking</a>
                              </li>

                              <li>
                                <a href="../shop/store-location.html">Shop Store Location</a>
                              </li>
                            </ul>
                          </div>
                        </li>

                        <li class="has-submenu">
                          <a href="#" data-submenu="off-shop-list">Shop List</a>

                          <div id="off-shop-list" class="submenu js-scrollbar">
                            <div class="submenu-header" data-submenu-close="off-shop-list">
                              <a href="#">Shop List</a>
                            </div>

                            <ul class="">
                              <li>
                                <a href="../shop/v1.html">Shop List v1</a>
                              </li>

                              <li>
                                <a href="../shop/v2.html">Shop List v2</a>
                              </li>

                              <li>
                                <a href="../shop/v3.html">Shop List v3</a>
                              </li>

                              <li>
                                <a href="../shop/v4.html">Shop List v4</a>
                              </li>

                              <li>
                                <a href="../shop/v5.html">Shop List v5</a>
                              </li>

                              <li>
                                <a href="../shop/v6.html">Shop List v6</a>
                              </li>

                              <li>
                                <a href="../shop/v7.html">Shop List v7</a>
                              </li>

                              <li>
                                <a href="../shop/v8.html">Shop List v8</a>
                              </li>

                              <li>
                                <a href="../shop/v9.html">Shop List v9</a>
                              </li>
                            </ul>
                          </div>
                        </li>

                        <li class="has-submenu">
                          <a href="#" data-submenu="off-blog">Blog</a>

                          <div id="off-blog" class="submenu js-scrollbar">
                            <div class="submenu-header" data-submenu-close="off-blog">
                              <a href="#">Blog</a>
                            </div>

                            <ul class="">
                              <li>
                                <a href="../blog/blog-v1.html">Blog v1</a>
                              </li>

                              <li>
                                <a href="../blog/blog-v2.html">Blog v2</a>
                              </li>

                              <li>
                                <a href="../blog/blog-v3.html">Blog v3</a>
                              </li>

                              <li>
                                <a href="../blog/blog-single.html">Blog Single</a>
                              </li>
                            </ul>
                          </div>
                        </li>

                        <li class="has-submenu">
                          <a href="#" data-submenu="off-others">Others</a>

                          <div id="off-others" class="submenu js-scrollbar">
                            <div class="submenu-header" data-submenu-close="off-others">
                              <a href="#">Others</a>
                            </div>

                            <ul class="">
                              <li>
                                <a href="../others/404.html">404</a>
                              </li>

                              <li>
                                <a href="../others/about.html">About Us</a>
                              </li>

                              <li>
                                <a href="../others/authors-list.html">Authors List</a>
                              </li>

                              <li>
                                <a href="../others/authors-single.html">Authors Single</a>
                              </li>

                              <li>
                                <a href="../others/coming-soon.html">Coming Soon</a>
                              </li>

                              <li>
                                <a href="../others/contact.html">Contact Us</a>
                              </li>

                              <li>
                                <a href="../others/faq.html">FAQ</a>
                              </li>

                              <li>
                                <a href="../others/pricing-table.html">Pricing Table</a>
                              </li>

                              <li>
                                <a href="../others/terms-conditions.html">Terms Conditions</a>
                              </li>
                            </ul>
                          </div>
                        </li>

                        <li class="px-5">
                          <a href="../../documentation/index.html" class="btn btn-primary mb-3 mb-md-0 mb-xl-3 mt-4 font-size-2 btn-block">Documentation</a>
                        </li>

                        <li class="px-5 mb-4">
                          <a href="../../starter/index.html" class="btn btn-secondary font-size-2 btn-block mb-2">Starter</a>
                        </li>
                      </ul>
                    </div>
                  </li>

                  <li class="has-submenu">
                    <a href="#" data-submenu="art-photo">Arts & Photography</a>

                    <div id="art-photo" class="submenu">
                      <div class="submenu-header" data-submenu-close="art-photo">
                        <a href="#">Arts & Photography</a>
                      </div>

                      <ul>
                        <li>
                          <a href="#">Architecture</a>
                        </li>

                        <li>
                          <a href="#">Business of Art</a>
                        </li>

                        <li>
                          <a href="#">Collections, Catalogs & Exhibitions</a>
                        </li>

                        <li>
                          <a href="#">Decorative Arts & Design</a>
                        </li>

                        <li>
                          <a href="#">Drawing</a>
                        </li>

                        <li>
                          <a href="#">Fashion</a>
                        </li>

                        <li>
                          <a href="#">Graphic Design</a>
                        </li>
                      </ul>
                    </div>
                  </li>

                  <li class="has-submenu">
                    <a href="#" data-submenu="biography">Biographies & Memoirs</a>

                    <div id="biography" class="submenu">
                      <div class="submenu-header" data-submenu-close="biography">
                        <a href="#">Biographies & Memoirs</a>
                      </div>

                      <ul>
                        <li>
                          <a href="#">Istanbul</a>
                        </li>

                        <li>
                          <a href="#">Mardin</a>
                        </li>

                        <li>
                          <a href="#">Amed</a>
                        </li>
                      </ul>
                    </div>
                  </li>

                  <li class="has-submenu">
                    <a href="#" data-submenu="children">Children's Books</a>

                    <div id="children" class="submenu">
                      <div class="submenu-header" data-submenu-close="children">
                        <a href="#">Children's Books</a>
                      </div>

                      <ul>
                        <li class="has-submenu">
                          <a href="#" data-submenu="electronics">Electronics</a>

                          <div id="electronics" class="submenu js-scrollbar">
                            <div class="submenu-header" data-submenu-close="electronics">
                              <a href="#">Electronics</a>
                            </div>

                            <ul class="">
                              <li>
                                <a href="#">Camera & Photo</a>
                              </li>

                              <li>
                                <a href="#">Home Audio</a>
                              </li>

                              <li>
                                <a href="#">Tv & Video</a>
                              </li>

                              <li>
                                <a href="#">Computers & Accessories</a>
                              </li>

                              <li>
                                <a href="#">Car & Vehicle Electronics</a>
                              </li>

                              <li>
                                <a href="#">Portable Audio & Video</a>
                              </li>

                              <li>
                                <a href="#">Headphones</a>
                              </li>

                              <li>
                                <a href="#">Accessories & Supplies</a>
                              </li>

                              <li>
                                <a href="#">Video Projectors</a>
                              </li>

                              <li>
                                <a href="#">Office Electronics</a>
                              </li>

                              <li>
                                <a href="#">Wearable Technology</a>
                              </li>

                              <li>
                                <a href="#">Service Plans</a>
                              </li>
                            </ul>
                          </div>
                        </li>

                        <li>
                          <a href="#">Books</a>
                        </li>

                        <li>
                          <a href="#">Video Games</a>
                        </li>

                        <li>
                          <a href="#">Computers</a>
                        </li>
                      </ul>
                    </div>
                  </li>

                  <li class="has-submenu">
                    <a href="#" data-submenu="computers">Computers & Technology</a>

                    <div id="computers" class="submenu">
                      <div class="submenu-header" data-submenu-close="computers">
                        <a href="#">Computers & Technology</a>
                      </div>

                      <ul>
                        <li>
                          <a href="#">Istanbul</a>
                        </li>

                        <li>
                          <a href="#">Mardin</a>
                        </li>

                        <li>
                          <a href="#">Amed</a>
                        </li>
                      </ul>
                    </div>
                  </li>

                  <li class="has-submenu">
                    <a href="#" data-submenu="cookbook">Cookbooks, Food & Wine</a>

                    <div id="cookbook" class="submenu">
                      <div class="submenu-header" data-submenu-close="cookbook">
                        <a href="#">Cookbooks, Food & Wine</a>
                      </div>

                      <ul>
                        <li>
                          <a href="#">Istanbul</a>
                        </li>

                        <li>
                          <a href="#">Mardin</a>
                        </li>

                        <li>
                          <a href="#">Amed</a>
                        </li>
                      </ul>
                    </div>
                  </li>

                  <li class="has-submenu">
                    <a href="#" data-submenu="sciencemath">Education & Teaching</a>

                    <div id="sciencemath" class="submenu">
                      <div class="submenu-header" data-submenu-close="sciencemath">
                        <a href="#">Education & Teaching</a>
                      </div>

                      <ul>
                        <li>
                          <a href="#">Istanbul</a>
                        </li>

                        <li>
                          <a href="#">Mardin</a>
                        </li>

                        <li>
                          <a href="#">Amed</a>
                        </li>
                      </ul>
                    </div>
                  </li>

                  <li class="has-submenu">
                    <a href="#" data-submenu="health">Health, Fitness & Dieting</a>

                    <div id="health" class="submenu">
                      <div class="submenu-header" data-submenu-close="health">
                        <a href="#">Health, Fitness & Dieting</a>
                      </div>

                      <ul>
                        <li>
                          <a href="#">Istanbul</a>
                        </li>

                        <li>
                          <a href="#">Mardin</a>
                        </li>

                        <li>
                          <a href="#">Amed</a>
                        </li>
                      </ul>
                    </div>
                  </li>

                  <li class="has-submenu">
                    <a href="#" data-submenu="history">History</a>

                    <div id="history" class="submenu">
                      <div class="submenu-header" data-submenu-close="history">
                        <a href="#">History</a>
                      </div>

                      <ul>
                        <li>
                          <a href="#">Istanbul</a>
                        </li>

                        <li>
                          <a href="#">Mardin</a>
                        </li>

                        <li>
                          <a href="#">Amed</a>
                        </li>
                      </ul>
                    </div>
                  </li>

                  <li class="has-submenu">
                    <a href="#" data-submenu="romance">Romance</a>

                    <div id="romance" class="submenu">
                      <div class="submenu-header" data-submenu-close="romance">
                        <a href="#">Romance</a>
                      </div>

                      <ul>
                        <li>
                          <a href="#">Istanbul</a>
                        </li>

                        <li>
                          <a href="#">Mardin</a>
                        </li>

                        <li>
                          <a href="#">Amed</a>
                        </li>
                      </ul>
                    </div>
                  </li>

                  <li class="has-submenu">
                    <a href="#" data-submenu="sports">Sports & Outdoors</a>

                    <div id="sports" class="submenu">
                      <div class="submenu-header" data-submenu-close="sports">
                        <a href="#">Sports & Outdoors</a>
                      </div>

                      <ul>
                        <li>
                          <a href="#">Istanbul</a>
                        </li>

                        <li>
                          <a href="#">Mardin</a>
                        </li>

                        <li>
                          <a href="#">Amed</a>
                        </li>
                      </ul>
                    </div>
                  </li>

                  <li class="has-submenu">
                    <a href="#" data-submenu="travel">Travel</a>

                    <div id="travel" class="submenu">
                      <div class="submenu-header" data-submenu-close="travel">
                        <a href="#">Travel</a>
                      </div>

                      <ul>
                        <li>
                          <a href="#">Istanbul</a>
                        </li>

                        <li>
                          <a href="#">Mardin</a>
                        </li>

                        <li>
                          <a href="#">Amed</a>
                        </li>
                      </ul>
                    </div>
                  </li>
                </ul>
              </div>
            </div>

            <div class="px-4 px-md-5 pt-5 pb-4 border-bottom">
              <h2 class="font-size-3 mb-3">HELP & SETTINGS </h2>
              <ul class="list-group list-group-flush list-group-borderless">
                <li class="list-group-item px-0 py-2 border-0"><a href="#" class="h-primary">Your Account</a></li>
                <li class="list-group-item px-0 py-2 border-0"><a href="#" class="h-primary">Help</a></li>
                <li class="list-group-item px-0 py-2 border-0"><a href="#" class="h-primary">Sign In</a></li>
              </ul>
            </div>

            <div class="px-4 px-md-5 py-5">
              <select class="custom-select mb-4 rounded-0 pl-4 height-4 shadow-none text-dark">
                <option selected>English (United States)</option>
                <option value="1">English (UK)</option>
                <option value="2">Arabic (Saudi Arabia)</option>
                <option value="3">Deutsch</option>
              </select>
              <select class="custom-select mb-4 rounded-0 pl-4 height-4 shadow-none text-dark">
                <option selected>$ USD</option>
                <option value="1">د.إ AED</option>
                <option value="2">¥ CNY</option>
                <option value="3">€ EUR</option>
              </select>
              <!-- Social Networks -->
              <ul class="list-inline mb-0">
                <li class="list-inline-item">
                  <a class="h-primary pr-2 font-size-2" href="#">
                    <span class="fab fa-facebook-f btn-icon__inner"></span>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a class="h-primary pr-2 font-size-2" href="#">
                    <span class="fab fa-google btn-icon__inner"></span>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a class="h-primary pr-2 font-size-2" href="#">
                    <span class="fab fa-twitter btn-icon__inner"></span>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a class="h-primary pr-2 font-size-2" href="#">
                    <span class="fab fa-github btn-icon__inner"></span>
                  </a>
                </li>
              </ul>
              <!-- End Social Networks -->
            </div>
          </div>
        </div>
        <!-- End Content -->
      </div>
    </div>
  </div>
</aside>
<!-- End Categories Sidebar Navigation -->

<!--===== END HEADER CONTENT =====-->

<!-- ====== MAIN CONTENT ===== -->
<main id="content">
  <div class="mb-5 space-bottom-lg-3">
    <div class="py-3 py-lg-7">
      <h6 class="font-weight-medium font-size-7 text-center my-1">About Us</h6>
    </div>
    <img class="img-fluid" src="https://placehold.it/1920x650" alt="Image-Description">
    <div class="container">
      <div class="mb-lg-8">
        <div class="col-lg-9 mx-auto">
          <div class="bg-white mt-n10 mt-md-n13 pt-5 pt-lg-7 px-3 px-md-5 pl-xl-10 pr-xl-4">
            <div class="mb-4 mb-lg-7 ml-xl-4">
              <h6 class="font-weight medium font-size-10 mb-4 mb-lg-7">Welcome to Bookworm</h6>
              <p class="font-weight-medium font-italic">“ Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model search for eolved over sometimes by accident, sometimes on purpose ”</p>
            </div>
            <div class="mb-4 pb-xl-1 ml-xl-4">
              <h6 class="font-weight-medium font-size-4 mb-4">What we really do?</h6>
              <p class="font-size-2">Mauris tempus erat laoreet turpis lobortis, eu tincidunt erat fermentum. Aliquam non tincidunt urna. Integer tincidunt nec nisl vitae ullamcorper. Proin sed ultrices erat. Praesent varius ultrices massa at faucibus. Aenean dignissim, orci sed faucibus pharetra, dui mi dignissim tortor, sit amet condimentum mi ligula sit amet augue. Pellentesque vitae eros eget enim mollis placerat. Aliquam non tincidunt urna. Integer tincidunt nec nisl vitae ullamcorper. Proin sed ultrices erat. Praesent varius ultrices massa at faucibus. Aenean dignissim, orci sed faucibus pharetra, dui mi dignissim tortor, sit amet condimentum mi ligula sit amet augue. Pellentesque vitae eros eget enim mollis placerat.</p>
            </div>
            <div class="ml-xl-4">
              <div class="row">
                <div class="col-md-6">
                  <h6 class="font-weight-medium font-size-4">Our Vision</h6>
                  <p class="font-size-2">Pellentesque sodales augue eget ultricies ultricies. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur sagittis ultrices condimentum.</p>
                </div>
                <div class="col-md-6">
                  <h6 class="font-weight-medium font-size-4">Our Vision</h6>
                  <p class="font-size-2">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis diam erat. Duis velit lectus, posuere a blandit metus mauris, tristique quis sapien eu, rutrum vulputate enim.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="mb-5 mb-lg-7">
        <div class="d-md-flex align-items-center justify-content-between px-xl-10">
          <div class="text-center mb-3 mb-md-0">
            <div class="font-size-12 font-weight-medium ml-lg-2">45M</div>
            <span class="font-size-4">Active Readers</span>
          </div>
          <div class="text-center mb-3 mb-md-0">
            <div class="font-size-12 font-weight-medium ml-2">+6k</div>
            <span class="font-size-4">Total Pages</span>
          </div>
          <div class="text-center mb-3 mb-md-0">
            <div class="font-size-12 font-weight-medium ">30.6M</div>
            <span class="font-size-4">Buyers Activie</span>
          </div>
          <div class="text-center mb-0">
            <div class="font-size-12 font-weight-medium ml-2">283</div>
            <span class="font-size-4">Cup Of Coffe</span>
          </div>
        </div>
      </div>
      <div class="mb-5 mb-lg-10">
        <h6 class="font-weight-medium font-size-7 mb-5 mb-lg-6">Why We</h6>
        <ul class="list-unstyled my-0 list-features row d-md-flex">
          <li class="list-feature mb-5 mb-lg-0 col-md-6 col-lg-3">
            <div class="media flex-column align-items-center align-items-md-start pr-xl-3">
              <div class="feature__icon font-size-14 text-primary text-lh-xs mb-3">
                <i class="glyph-icon flaticon-delivery"></i>
              </div>
              <div class="media-body text-center text-md-left">
                <h4 class="feature__title font-size-3 text-dark">Free Delivery</h4>
                <p class="feature__subtitle m-0 text-dark">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu.</p>
              </div>
            </div>
          </li>
          <li class="list-feature  mb-5 mb-lg-0 col-md-6 col-lg-3">
            <div class="media flex-column align-items-center align-items-md-start pr-xl-3">
              <div class="feature__icon font-size-14 text-primary text-lh-xs mb-3">
                <i class="glyph-icon flaticon-credit"></i>
              </div>
              <div class="media-body text-center text-md-left">
                <h4 class="feature__title font-size-3 text-dark">Secure Payment</h4>
                <p class="feature__subtitle m-0 text-dark">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu.</p>
              </div>
            </div>
          </li>
          <li class="list-feature  mb-5 mb-md-0 col-md-6 col-lg-3">
            <div class="media flex-column align-items-center align-items-md-start pr-xl-3">
              <div class="feature__icon font-size-14 text-primary text-lh-xs mb-3">
                <i class="glyph-icon flaticon-warranty"></i>
              </div>
              <div class="media-body text-center text-md-left">
                <h4 class="feature__title font-size-3 text-dark">Money Back Guarantee</h4>
                <p class="feature__subtitle m-0 text-dark">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu.</p>
              </div>
            </div>
          </li>
          <li class="list-feature  mb-5 mb-md-0 col-md-6 col-lg-3">
            <div class="media flex-column align-items-center align-items-md-start pr-xl-3">
              <div class="feature__icon font-size-14 text-primary text-lh-xs mb-3">
                <i class="glyph-icon flaticon-help"></i>
              </div>
              <div class="media-body text-center text-md-left">
                <h4 class="feature__title font-size-3 text-dark">24/7 Support</h4>
                <p class="feature__subtitle m-0 text-dark">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu.</p>
              </div>
            </div>
          </li>
        </ul>
      </div>
      <div class="mb-10 pb-md-6 pb-lg-10">
        <h6 class="font-weight-medium font-size-7 mb-5">Our Team</h6>
        <div class="js-slick-carousel u-slick" data-pagi-classes="text-center u-slick__pagination mt-md-8 mt-4 position-absolute right-0 left-0"
             data-slides-show="5"
             data-responsive='[{
                           "breakpoint": 992,
                           "settings": {
                             "slidesToShow": 2
                           }
                        }, {
                           "breakpoint": 768,
                           "settings": {
                             "slidesToShow": 1
                           }
                        }, {
                           "breakpoint": 554,
                           "settings": {
                             "slidesToShow": 1
                           }
                        }]'>
          <div class="product__inner overflow-hidden">
            <div class="woocommerce-LoopProduct-link woocommerce-loop-product__link d-block position-relative">
              <div class="woocommerce-loop-product__thumbnail border pt-5 mb-3">
                <a href="#" class="d-block"><img src="https://placehold.it/180x320" class="img-fluid mx-auto d-block attachment-shop_catalog size-shop_catalog wp-post-image" alt="image-description"></a>
              </div>

              <div class="woocommerce-loop-product__body product__body">
                <h6 class="font-weight-regular mb-1">Anna Baranov</h6>
                <span class="font-size-2 text-secondary-gray-700">Client Care</span>
              </div>
            </div>
          </div>
          <div class="product__inner overflow-hidden">
            <div class="woocommerce-LoopProduct-link woocommerce-loop-product__link d-block position-relative">
              <div class="woocommerce-loop-product__thumbnail border border-left-0 pt-5 mb-3">
                <a href="#" class="d-block"><img src="https://placehold.it/180x320" class="img-fluid mx-auto d-block attachment-shop_catalog size-shop_catalog wp-post-image" alt="image-description"></a>
              </div>

              <div class="woocommerce-loop-product__body product__body">
                <h6 class="font-weight-regular mb-1">Thomas Snow</h6>
                <span class="font-size-2 text-secondary-gray-700">CEO/Founder</span>
              </div>
            </div>
          </div>
          <div class="product__inner overflow-hidden">
            <div class="woocommerce-LoopProduct-link woocommerce-loop-product__link d-block position-relative">
              <div class="woocommerce-loop-product__thumbnail border border-left-0 pt-5 mb-3">
                <a href="#" class="d-block"><img src="https://placehold.it/180x320" class="img-fluid mx-auto d-block attachment-shop_catalog size-shop_catalog wp-post-image" alt="image-description"></a>
              </div>

              <div class="woocommerce-loop-product__body product__body">
                <h6 class="font-weight-regular mb-1">Andre Kowalsy</h6>
                <span class="font-size-2 text-secondary-gray-700">Support Boss</span>
              </div>
            </div>
          </div>
          <div class="product__inner overflow-hidden">
            <div class="woocommerce-LoopProduct-link woocommerce-loop-product__link d-block position-relative">
              <div class="woocommerce-loop-product__thumbnail border border-left-0 pt-5 mb-3">
                <a href="#" class="d-block"><img src="https://placehold.it/180x320" class="img-fluid mx-auto d-block attachment-shop_catalog size-shop_catalog wp-post-image" alt="image-description"></a>
              </div>

              <div class="woocommerce-loop-product__body product__body">
                <h6 class="font-weight-regular mb-1">Pamela Doe</h6>
                <span class="font-size-2 text-secondary-gray-700">Delivery Driver</span>
              </div>
            </div>
          </div>
          <div class="product__inner overflow-hidden">
            <div class="woocommerce-LoopProduct-link woocommerce-loop-product__link d-block position-relative">
              <div class="woocommerce-loop-product__thumbnail border border-left-0 pt-5 mb-3">
                <a href="#" class="d-block"><img src="https://placehold.it/180x320" class="img-fluid mx-auto d-block attachment-shop_catalog size-shop_catalog wp-post-image" alt="image-description"></a>
              </div>

              <div class="woocommerce-loop-product__body product__body">
                <h6 class="font-weight-regular mb-1">Susan McCain</h6>
                <span class="font-size-2 text-secondary-gray-700">Packaging Girl</span>
              </div>
            </div>
          </div>
          <div class="product__inner overflow-hidden">
            <div class="woocommerce-LoopProduct-link woocommerce-loop-product__link d-block position-relative">
              <div class="woocommerce-loop-product__thumbnail border border-left-0 pt-5 mb-3">
                <a href="#" class="d-block"><img src="https://placehold.it/180x320" class="img-fluid mx-auto d-block attachment-shop_catalog size-shop_catalog wp-post-image" alt="image-description"></a>
              </div>

              <div class="woocommerce-loop-product__body product__body">
                <h6 class="font-weight-regular mb-1">Andre Kowalsy</h6>
                <span class="font-size-2 text-secondary-gray-700">Support Boss</span>
              </div>
            </div>
          </div>
          <div class="product__inner overflow-hidden">
            <div class="woocommerce-LoopProduct-link woocommerce-loop-product__link d-block position-relative">
              <div class="woocommerce-loop-product__thumbnail border border-left-0 pt-5 mb-3">
                <a href="#" class="d-block"><img src="https://placehold.it/180x320" class="img-fluid mx-auto d-block attachment-shop_catalog size-shop_catalog wp-post-image" alt="image-description"></a>
              </div>

              <div class="woocommerce-loop-product__body product__body">
                <h6 class="font-weight-regular mb-1">Pamela Doe</h6>
                <span class="font-size-2 text-secondary-gray-700">Delivery Driver</span>
              </div>
            </div>
          </div>
          <div class="product__inner overflow-hidden">
            <div class="woocommerce-LoopProduct-link woocommerce-loop-product__link d-block position-relative">
              <div class="woocommerce-loop-product__thumbnail border border-left-0 pt-5 mb-3">
                <a href="#" class="d-block"><img src="https://placehold.it/180x320" class="img-fluid mx-auto d-block attachment-shop_catalog size-shop_catalog wp-post-image" alt="image-description"></a>
              </div>

              <div class="woocommerce-loop-product__body product__body">
                <h6 class="font-weight-regular mb-1">Thomas Snow</h6>
                <span class="font-size-2 text-secondary-gray-700">CEO/Founder</span>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div>
        <h6 class="font-weight-medium font-size-7 mb-4 mb-lg-9">Company Partners</h6>
        <div class="d-lg-flex align-items-center justify-content-between">
          <div class="text-center mb-5 mb-lg-0">
            <img class="img-fluid" src="../../assets/img/150x32/img1.png" alt="Image-Description">
          </div>
          <div class="text-center mb-5 mb-lg-0">
            <img class="img-fluid" src="../../assets/img/150x32/img2.png" alt="Image-Description">
          </div>
          <div class="text-center mb-5 mb-lg-0">
            <img class="img-fluid" src="../../assets/img/150x32/img3.png" alt="Image-Description">
          </div>
          <div class="text-center mb-5 mb-lg-0">
            <img class="img-fluid" src="../../assets/img/150x32/img4.png" alt="Image-Description">
          </div>
          <div class="text-center mb-5 mb-lg-0">
            <img class="img-fluid" src="../../assets/img/150x32/img6.png" alt="Image-Description">
          </div>
          <div class="text-center mb-5 mb-lg-0">
            <img class="img-fluid" src="../../assets/img/150x32/img5.png" alt="Image-Description">
          </div>
        </div>
      </div>
    </div>
  </div>
</main>
<!-- ====== END MAIN CONTENT ===== -->

</body>
</html>
