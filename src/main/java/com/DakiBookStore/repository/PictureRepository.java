package com.DakiBookStore.repository;

import com.DakiBookStore.model.Picture;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PictureRepository extends JpaRepository<Picture,Long> {
    @Query("SELECT p FROM Picture p WHERE p.book.id = :bookId")
    Picture findByBookId(@Param("bookId") Long bookId);
}
