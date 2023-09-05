package com.DakiBookStore.repository;

import com.DakiBookStore.model.Book;
import com.DakiBookStore.model.Order;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderRepository extends JpaRepository<Order,Long> {
    Page<Order> findAll(Pageable pageable);

    @Query(value = "SELECT COUNT(*) FROM Orders", nativeQuery = true)
    Long countOrder();
    @Query("SELECT SUM(o.totalPrice) FROM Order o WHERE o.OrderStatus = 'Delivered'")
    Double calculateTotalRevenue();
    @Query("SELECT COUNT(o) FROM Order o WHERE o.OrderStatus = 'Pending'")
    Long countPendingOrders();
    @Query("SELECT COUNT(o) FROM Order o WHERE o.OrderStatus = 'Shipping'")
    Long countShippingOrders();
    @Query("SELECT COUNT(o) FROM Order o WHERE o.OrderStatus = 'Delivered'")
    Long countDeliveredOrders();
    @Query("SELECT o FROM Order o WHERE o.OrderStatus = :status")
    List<Order> findByOrderStatus(@Param("status") String status);


}
