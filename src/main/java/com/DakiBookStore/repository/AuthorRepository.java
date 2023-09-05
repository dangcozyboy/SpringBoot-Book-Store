package com.DakiBookStore.repository;

import com.DakiBookStore.model.Account;
import com.DakiBookStore.model.Author;
import com.DakiBookStore.model.Book;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public interface AuthorRepository extends JpaRepository<Author,Long> {
    @Query(value = "SELECT TOP 5 * FROM Author ORDER BY NEWID()", nativeQuery = true)
    List<Author> findFavoriteAuthor();
    Page<Author> findAll(Pageable pageable);
}
