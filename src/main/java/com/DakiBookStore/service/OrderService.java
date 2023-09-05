package com.DakiBookStore.service;

import com.DakiBookStore.model.*;
import com.DakiBookStore.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;

@Service
@Transactional
public class OrderService {
    @Autowired
    private OrderRepository orderRepository;
    @Autowired
    private OrderDetailRepository orderDetailRepository;
    @Autowired
    private CartRepository cartRepository;
    @Autowired
    private CartItemRepository cartItemRepository;
    @Autowired
    private PaymentService paymentService;
    @Autowired
    public OrderService(OrderRepository orderRepository) {
        this.orderRepository = orderRepository;
    }
    public Order findById(Long id) {
        return orderRepository.findById(id).orElse(null);
    }

    public List<Order> findAll() {
        return orderRepository.findAll();
    }

    public Order save(Order order) {
        return orderRepository.save(order);
    }

    public void deleteById(Long id) {
        orderRepository.deleteById(id);
    }
    public long countOrder(){
        return  orderRepository.countOrder();
    }
    public List<Order> findByStatus(String status){
        return orderRepository.findByOrderStatus(status);
    }
    public long countPendingOrders(){
        return  orderRepository.countPendingOrders();
    }public long countShippingOrders(){
        return  orderRepository.countShippingOrders();
    }
    public long countDeliveredOrders(){
        return  orderRepository.countDeliveredOrders();
    }


    public double totalProfit(){
        return  orderRepository.calculateTotalRevenue();
    }

    public void saveOrder(Cart cart,Long id){
        Order order = new Order();
        order.setOrderStatus("Pending");
        order.setOrderDate(new java.sql.Timestamp(new Date().getTime()));
        order.setAccount(cart.getAccount());
        order.setShipDate(null);
        order.setDeliveryDate(null);
        order.setTotalPrice(cart.getTotalPrices());
        Paymentmethod paymentmethod = paymentService.findById(id);
        order.setPaymentmethod(paymentmethod);
        List<OrderDetail> orderDetailsList = new ArrayList<>();
        for (CartItem item : cart.getCartItem()){
            OrderDetail orderDetail = new OrderDetail();
            orderDetail.setOrder(order);
            orderDetail.setQuantity(item.getQuantity());
            orderDetail.setBook(item.getBook());
            orderDetail.setUnitPrice(item.getBook().getPrice());
            orderDetailsList.add(orderDetail);
            orderDetailRepository.save(orderDetail); // lưu OrderDetail sau
            cartItemRepository.delete(item);
        }
        order.setOrderDetailList(orderDetailsList);
        cart.setCartItem(new HashSet<>());
//        cart.setTotalItems(0);
//        cart.setTotalPrices(0);
//        cart.setId(cart.getId()+1);
//        cartRepository.save(cart);
        cartRepository.delete(cart);
        orderRepository.save(order);
    }
    public void acceptOrder(Long id){
        Order order = orderRepository.getById(id);
        order.setShipDate(new java.sql.Timestamp(new Date().getTime()));
        if(order.getOrderStatus().equals("Pending") || order.getOrderStatus().equals("Paid")) {
            order.setOrderStatus("Shipping");
        }
        orderRepository.save(order);
    }
    public void cancelOrder(Long id){
        Order order = orderRepository.getById(id);
        order.setShipDate(null);
        order.setOrderStatus("Canceled");
        orderRepository.save(order);
    }
    public void deliveryOrder(Long id){
        Order order = orderRepository.getById(id);
        order.setDeliveryDate(new java.sql.Timestamp(new Date().getTime()));
        if(order.getOrderStatus().equals("Shipping")) {
            order.setOrderStatus("Delivered");
        }
        orderRepository.save(order);
    }
    public Page<Order> findAll(Pageable pageable) {
        return orderRepository.findAll(pageable);
    }
}
