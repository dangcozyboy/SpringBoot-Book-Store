package com.DakiBookStore.repository;

import com.DakiBookStore.model.InformationAccount;
import com.DakiBookStore.model.Picture;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface InformationRepository extends JpaRepository<InformationAccount,Long> {
    @Query("SELECT p FROM InformationAccount p WHERE p.account.id = :accountId")
    InformationAccount findByAccountId(@Param("accountId") Long accountId);
}
