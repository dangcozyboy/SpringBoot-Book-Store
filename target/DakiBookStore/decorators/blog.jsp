<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Title -->
    <title>Daki Book Store</title>

    <!-- Required Meta Tags Always Come First -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Favicon -->
    <link href="<c:url value='/template/user/img/favicon.png'/>"
    <%--    <link rel="shortcut icon" href="../../assets/img/favicon.png">--%>

    <!-- Font -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700&display=swap" rel="stylesheet">


    <link href="<c:url value='/template/user/vendor/font-awesome/css/fontawesome-all.min.css'/>" rel="stylesheet" type="text/css">
    <link href="<c:url value='/template/user/vendor/flaticon/font/flaticon.css'/>" rel="stylesheet" type="text/css">
    <link href="<c:url value='/template/user/vendor/animate.css/animate.css'/>" rel="stylesheet" type="text/css">
    <link href="<c:url value='/template/user/vendor/bootstrap-select/dist/css/bootstrap-select.min.css'/>" rel="stylesheet" type="text/css">
    <link href="<c:url value='/template/user/vendor/slick-carousel/slick/slick.css'/>" rel="stylesheet" type="text/css">
    <link href="<c:url value='/template/user/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.css'/>" rel="stylesheet" type="text/css">

    <link href="<c:url value='/template/user/css/theme.css'/>" rel="stylesheet" type="text/css">

</head>
<body>

<!-- Navigation -->
<%@ include file="/common/user/header.jsp"%>

<dec:body/>

<!-- Footer -->
<%@ include file="/common/user/footer.jsp"%>

<!-- Bootstrap core JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->

<script src="<c:url value='/template/user/vendor/jquery/dist/jquery.min.js'/>"></script>
<script src="<c:url value='/template/user/vendor/jquery-migrate/dist/jquery-migrate.min.js'/>"></script>
<script src="<c:url value='/template/user/vendor/popper.js/dist/umd/popper.min.js'/>"></script>
<script src="<c:url value='/template/user/vendor/bootstrap/bootstrap.min.js'/>"></script>
<script src="<c:url value='/template/user/vendor/bootstrap-select/dist/js/bootstrap-select.min.js'/>"></script>
<script src="<c:url value='/template/user/vendor/slick-carousel/slick/slick.min.js'/>"></script>
<script src="<c:url value='/template/user/vendor/multilevel-sliding-mobile-menu/dist/jquery.zeynep.js'/>"></script>
<script src="<c:url value='/template/user/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js'/>"></script>


<!-- JS HS Components -->
<script src="<c:url value='/template/user/js/hs.core.js'/>"></script>
<script src="<c:url value='/template/user/js/components/hs.unfold.js'/>"></script>
<script src="<c:url value='/template/user/js/components/hs.malihu-scrollbar.js'/>"></script>
<script src="<c:url value='/template/user/js/components/hs.header.js'/>"></script>
<script src="<c:url value='/template/user/js/components/hs.slick-carousel.js'/>"></script>
<script src="<c:url value='/template/user/js/components/hs.selectpicker.js'/>"></script>
<script src="<c:url value='/template/user/js/components/hs.show-animation.js'/>"></script>


<!-- JS Bookworm -->
<!-- <script src="../../assets/js/bookworm.js"></script> -->
<script>
    $(document).on('ready', function () {
        // initialization of unfold component
        $.HSCore.components.HSUnfold.init($('[data-unfold-target]'));

        // initialization of slick carousel
        $.HSCore.components.HSSlickCarousel.init('.js-slick-carousel');

        // initialization of header
        $.HSCore.components.HSHeader.init($('#header'));

        // initialization of malihu scrollbar
        $.HSCore.components.HSMalihuScrollBar.init($('.js-scrollbar'));

        // initialization of show animations
        $.HSCore.components.HSShowAnimation.init('.js-animation-link');

        // init zeynepjs
        var zeynep = $('.zeynep').zeynep({
            onClosed: function () {
                // enable main wrapper element clicks on any its children element
                $("body main").attr("style", "");

                console.log('the side menu is closed.');
            },
            onOpened: function () {
                // disable main wrapper element clicks on any its children element
                $("body main").attr("style", "pointer-events: none;");

                console.log('the side menu is opened.');
            }
        });

        // handle zeynep overlay click
        $(".zeynep-overlay").click(function () {
            zeynep.close();
        });

        // open side menu if the button is clicked
        $(".cat-menu").click(function () {
            if ($("html").hasClass("zeynep-opened")) {
                zeynep.close();
            } else {
                zeynep.open();
            }
        });
    });
</script>
<%--<script src="<c:url value='/template/web/vendor/jquery/jquery.min.js'/>"></script>--%>
<%--<script src="<c:url value='/template/web/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>--%>

</body>
</html>