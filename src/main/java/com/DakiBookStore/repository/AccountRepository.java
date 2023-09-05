package com.DakiBookStore.repository;

import com.DakiBookStore.model.Account;
import com.DakiBookStore.model.Author;
import com.DakiBookStore.model.Order;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AccountRepository extends JpaRepository<Account, Long> {
    Account findByUsername(String Username);
    Page<Account> findAll(Pageable pageable);
    @Query(value = "SELECT COUNT(*) FROM Account", nativeQuery = true)
    Long countAccount();
    Boolean existsAccountByUsername(String username);
    Account findById(long id);

}

