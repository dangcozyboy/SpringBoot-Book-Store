    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="/common/taglib.jsp" %>
    <!-- Header -->
    <div class="header">
        <div class="header-left">
            <a href="index.html" class="logo logo-small">
                <img src="assets/img/logo-icon.png" alt="Logo" width="30" height="30">
            </a>
        </div>
        <a href="javascript:void(0);" id="toggle_btn">
            <i class="fas fa-align-left"></i>
        </a>
        <a class="mobile_btn" id="mobile_btn" href="javascript:void(0);">
            <i class="fas fa-align-left"></i>
        </a>

        <ul class="nav user-menu">
            <!-- Notifications -->
            <li class="nav-item dropdown noti-dropdown">
                <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                    <i class="far fa-bell"></i>  <span class="badge badge-pill"></span>
                </a>
                <div class="dropdown-menu dropdown-menu-right notifications">
                    <div class="topnav-dropdown-header">
                        <span class="notification-title">Notifications</span>
                        <a href="javascript:void(0)" class="clear-noti"> Clear All </a>
                    </div>
                    <div class="noti-content">
                        <ul class="notification-list">
                            <li class="notification-message">
                                <a href="admin-notification.html">
                                    <div class="media">
											<span class="avatar avatar-sm">
												<img class="avatar-img rounded-circle" alt="" src="assets/img/provider/provider-01.jpg">
											</span>
                                        <div class="media-body">
                                            <p class="noti-details">
                                                <span class="noti-title">Thomas Herzberg have been subscribed</span>
                                            </p>
                                            <p class="noti-time">
                                                <span class="notification-time">15 Sep 2020 10:20 PM</span>
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="notification-message">
                                <a href="admin-notification.html">
                                    <div class="media">
											<span class="avatar avatar-sm">
												<img class="avatar-img rounded-circle" alt="" src="assets/img/provider/provider-02.jpg">
											</span>
                                        <div class="media-body">
                                            <p class="noti-details">
                                                <span class="noti-title">Matthew Garcia have been subscribed</span>
                                            </p>
                                            <p class="noti-time">
                                                <span class="notification-time">13 Sep 2020 03:56 AM</span>
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="notification-message">
                                <a href="admin-notification.html">
                                    <div class="media">
											<span class="avatar avatar-sm">
												<img class="avatar-img rounded-circle" alt="" src="assets/img/provider/provider-03.jpg">
											</span>
                                        <div class="media-body">
                                            <p class="noti-details">
                                                <span class="noti-title">Yolanda Potter have been subscribed</span>
                                            </p>
                                            <p class="noti-time">
                                                <span class="notification-time">12 Sep 2020 09:25 PM</span>
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="notification-message">
                                <a href="admin-notification.html">
                                    <div class="media">
											<span class="avatar avatar-sm">
												<img class="avatar-img rounded-circle" alt="User Image" src="assets/img/provider/provider-04.jpg">
											</span>
                                        <div class="media-body">
                                            <p class="noti-details">
                                                <span class="noti-title">Ricardo Flemings have been subscribed</span>
                                            </p>
                                            <p class="noti-time">
                                                <span class="notification-time">11 Sep 2020 06:36 PM</span>
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="notification-message">
                                <a href="admin-notification.html">
                                    <div class="media">
											<span class="avatar avatar-sm">
												<img class="avatar-img rounded-circle" alt="User Image" src="assets/img/provider/provider-05.jpg">
											</span>
                                        <div class="media-body">
                                            <p class="noti-details">
                                                <span class="noti-title">Maritza Wasson have been subscribed</span>
                                            </p>
                                            <p class="noti-time">
                                                <span class="notification-time">10 Sep 2020 08:42 AM</span>
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="notification-message">
                                <a href="admin-notification.html">
                                    <div class="media">
											<span class="avatar avatar-sm">
												<img class="avatar-img rounded-circle" alt="User Image" src="assets/img/provider/provider-06.jpg">
											</span>
                                        <div class="media-body">
                                            <p class="noti-details">
                                                <span class="noti-title">Marya Ruiz have been subscribed</span>
                                            </p>
                                            <p class="noti-time">
                                                <span class="notification-time">9 Sep 2020 11:01 AM</span>
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="notification-message">
                                <a href="admin-notification.html">
                                    <div class="media">
											<span class="avatar avatar-sm">
												<img class="avatar-img rounded-circle" alt="User Image" src="assets/img/provider/provider-07.jpg">
											</span>
                                        <div class="media-body">
                                            <p class="noti-details">
                                                <span class="noti-title">Richard Hughes have been subscribed</span>
                                            </p>
                                            <p class="noti-time">
                                                <span class="notification-time">8 Sep 2020 06:23 AM</span>
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="topnav-dropdown-footer">
                        <a href="admin-notification.html">View all Notifications</a>
                    </div>
                </div>
            </li>
            <!-- /Notifications -->

            <!-- User Menu -->
            <li class="nav-item dropdown">
                <a href="javascript:void(0)" class="dropdown-toggle user-link  nav-link" data-toggle="dropdown">
						<span class="user-img">
							<img class="rounded-circle" src="assets/img/user.jpg" width="40" alt="Admin">
						</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="admin-profile.html">Profile</a>
                    <a class="dropdown-item" href="login.html">Logout</a>
                </div>
            </li>
            <!-- /User Menu -->

        </ul>
    </div>
    <!-- /Header -->

    <!-- Sidebar -->
    <div class="sidebar" id="sidebar">
        <div class="sidebar-logo">
            <a href="index.html">
                <img src="assets/img/sub-category/DAKI BOOK.png" class="img-fluid" alt="">
            </a>
        </div>
        <div class="sidebar-inner slimscroll">
            <div id="sidebar-menu" class="sidebar-menu">
                <ul>
                    <li>
                        <a href="<c:url value='/admin/home'/>"><i class="fas fa-columns"></i> <span>Dashboard</span></a>
                    </li>

                    <li class="submenu">
                        <a href="#"><i class="fab fa-wpforms"></i> <span>Quản Lý Sách</span> <span
                                class="menu-arrow"></span></a>
                        <ul style="display: none;">
                            <li><a href="<c:url value='/admin/viewCategory'/>">Thể Loại Sách</a></li>
                            <li><a href="<c:url value='/admin/list-book'/>">Danh Mục Sách</a></li>
                        </ul>
                    </li>


                    <li class="submenu">
                        <a href="#"><i class="far fa-calendar-check"></i> <span>Quản Lý Đơn Hàng</span> <span
                                class="menu-arrow"></span></a>
                        <ul style="display: none;">
                            <li><a href="<c:url value='/admin/list-order'/>">Quản Lý Đơn Hàng</a></li>
                        </ul>
                    </li>


                    <li class="submenu">
                        <a href="#"><i class="fas fa-users"></i> <span>Quản Lý Người Dùng</span> <span
                                class="menu-arrow"></span></a>
                        <ul style="display: none;">
                            <li><a href="<c:url value='/admin/list-user'/>">Tài Khoản Người Dùng</a></li>
                        </ul>
                    </li>

                    <li class="submenu">
                        <a href="#"><i class="fas fa-users"></i> <span>Quản Lý Tác Giả</span> <span
                                class="menu-arrow"></span></a>
                        <ul style="display: none;">
                            <li class="active"><a href="<c:url value='/admin/list-author'/>">Thông Tin Tác Giả</a></li>
                        </ul>
                    </li>


                    <li class="submenu">
                        <a href="#"><i class="fas fa-wallet"></i> <span>Quản Lý Doanh Thu</span> <span
                                class="menu-arrow"></span></a>
                        <ul style="display: none;">
                            <li><a  href="<c:url value='/admin/view-TotalRevenue'/>">Thống Kê Doanh Thu</a></li>
                        </ul>
                    </li>

                    <li>
                        <a href="subscriptions.html"><i class="fas fa-table"></i> <span>Các Loại Vận Chuyển</span></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- /Sidebar -->
