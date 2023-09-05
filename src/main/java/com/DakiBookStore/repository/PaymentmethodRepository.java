package com.DakiBookStore.repository;

import com.DakiBookStore.model.Paymentmethod;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PaymentmethodRepository extends JpaRepository<Paymentmethod,Long> {
}
