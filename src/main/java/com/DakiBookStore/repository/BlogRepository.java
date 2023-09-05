package com.DakiBookStore.repository;


import com.DakiBookStore.model.Blog;
import com.DakiBookStore.model.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public interface BlogRepository extends JpaRepository<Blog,Long> {

}
