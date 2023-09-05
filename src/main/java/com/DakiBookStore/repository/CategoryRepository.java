package com.DakiBookStore.repository;

import com.DakiBookStore.model.Book;
import com.DakiBookStore.model.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface CategoryRepository extends JpaRepository<Category,Long> {
//    @Query(value = "insert into Category (Name_Of_Category) values ':category'", nativeQuery = true)
//    List<Category> addCategory(@Param("category") String category);
}
