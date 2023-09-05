package com.DakiBookStore.repository;

import com.DakiBookStore.model.Author;
import com.DakiBookStore.model.Book;
import com.DakiBookStore.model.Category;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

@Repository
public interface BookRepository extends JpaRepository<Book,Long> {
    @Query(value = "SELECT TOP 5 * FROM Book ORDER BY NEWID()", nativeQuery = true)
    List<Book> findBestSellerBooks();
    @Query(value = "SELECT TOP 12 * FROM Book ORDER BY NEWID()", nativeQuery = true)
    List<Book> findFeaturedBooks();
    @Query(value = "SELECT * FROM Book WHERE name LIKE '%:keyword%'", nativeQuery = true)
    List<Book> searchBookByKeyword(@Param("keyword") String keyword);
    @Query(value = "SELECT COUNT(*) FROM Book", nativeQuery = true)
    Long countBook();
    public List<Book> findByNameContainingIgnoreCase(String keyword);
    Page<Book> findAll(Pageable pageable);
    @Query("SELECT COUNT(b) FROM Book b")
    Long countAllBooks();

    List<Book> findByAuthor(Author author);
    List<Book> findByCategory(Category category);
    boolean existsBookByName(String name);
}
