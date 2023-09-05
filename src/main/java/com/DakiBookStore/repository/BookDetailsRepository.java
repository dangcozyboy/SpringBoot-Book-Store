package com.DakiBookStore.repository;

import com.DakiBookStore.model.Book_Details;
import com.DakiBookStore.model.Picture;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BookDetailsRepository extends JpaRepository<Book_Details, Long> {
    @Query("SELECT p FROM Book_Details p WHERE p.id_Book.id = :bookId")
    Book_Details findByBookId(@Param("bookId") Long bookId);
}
