<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>My Order</title>
</head>
<body>

    <h6 class="font-weight-medium font-size-7 ml-lg-1 mb-lg-8 pb-xl-1">Orders</h6>
    <table class="table">
      <thead>
      <tr class="border">
        <th scope="col" class="py-3 border-bottom-0 font-weight-medium pl-3 pl-lg-5">Order</th>
        <th scope="col" class="py-3 border-bottom-0 font-weight-medium">Date</th>
        <th scope="col" class="py-3 border-bottom-0 font-weight-medium">Status</th>
        <th scope="col" class="py-3 border-bottom-0 font-weight-medium">Address</th>
        <th scope="col" class="py-3 border-bottom-0 font-weight-medium">Payment method</th>
        <th scope="col" class="py-3 border-bottom-0 font-weight-medium">Shipping Date</th>
        <th scope="col" class="py-3 border-bottom-0 font-weight-medium">Delivery Date</th>
        <th scope="col" class="py-3 border-bottom-0 font-weight-medium">Total Price</th>
      </tr>
      </thead>

      <tbody>
      <c:forEach var="order" items="${orders}">
      <tr class="border">
        <th class="pl-3 pl-md-5 font-weight-normal align-middle py-6">#${order.id}</th>
        <td class="align-middle py-5">${fn:substring(order.orderDate, 0, 10)}</td>
        <td class="align-middle py-5">${order.orderStatus}</td>
        <td class="align-middle py-5">${order.account.informationAccount.address}</td>
        <td class="align-middle py-5">${order.paymentmethod.method}</td>
        <td class="align-middle py-5">
          <c:if test="${order.shipDate != null}">
            ${fn:substring(order.shipDate, 0, 10)}
          </c:if>
          <c:if test="${order.shipDate == null}">
            Waiting for the accept
          </c:if>
        </td>
        <td class="align-middle py-5">
          <c:if test="${order.deliveryDate != null}">
            ${fn:substring(order.deliveryDate, 0, 10)}
          </c:if>
          <c:if test="${order.deliveryDate == null}">
            Waiting for shipping
          </c:if>
        </td>
        <td class="align-middle py-5">
          <span class="text-primary">${order.formatVND(order.totalPrice)}</span></td>
      </tr>
      </c:forEach>
      </tbody>
    </table>
</body>
</html>
