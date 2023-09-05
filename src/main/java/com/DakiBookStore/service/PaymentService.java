package com.DakiBookStore.service;

import com.DakiBookStore.model.Book;
import com.DakiBookStore.model.Paymentmethod;
import com.DakiBookStore.repository.BookRepository;
import com.DakiBookStore.repository.PaymentmethodRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PaymentService {
    private final PaymentmethodRepository paymentmethodRepository;
    @Autowired
    public PaymentService(PaymentmethodRepository paymentmethodRepository) {
        this.paymentmethodRepository = paymentmethodRepository;
    }
    public Paymentmethod findById(Long id) {
        return paymentmethodRepository.findById(id).orElse(null);
    }

    public List<Paymentmethod> findAll() {
        return paymentmethodRepository.findAll();
    }

    public Paymentmethod save(Paymentmethod paymentmethod) {
        return paymentmethodRepository.save(paymentmethod);
    }

    public void deleteById(Long id) {
        paymentmethodRepository.deleteById(id);
    }
}
