package com.DakiBookStore.service;

import com.DakiBookStore.model.Book;
import com.DakiBookStore.model.Category;
import com.DakiBookStore.repository.BookRepository;
import com.DakiBookStore.repository.CategoryRepository;
import com.DakiBookStore.service.exception.DuplicateCategoryException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.nio.charset.StandardCharsets;
import java.util.List;

@Service
public class CategoryService {
    private final CategoryRepository categoryRepository;

    @Autowired
    public CategoryService(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }
    public Category findById(Long id) {
        return categoryRepository.findById(id).orElse(null);
    }

    public List<Category> findAll() {
        return categoryRepository.findAll();
    }

    public Category save(Category category) {
        return categoryRepository.save(category);
    }

    public void deleteById(Long id) {
        categoryRepository.deleteById(id);
    }
    public void addCategory(Category category){
        if(categoryRepository.existsById(category.getId())){
            try {
                throw new DuplicateCategoryException("Category with name " + category.getCategory() + " already exists");
            } catch (DuplicateCategoryException e) {
                throw new RuntimeException(e);
            }
        }
        category.setCategory(new String(category.getCategory().getBytes(), StandardCharsets.UTF_8));
        categoryRepository.save(category);
    }
    public void updateCategory(Category category){
        Category category1 = categoryRepository.getById(category.getId());
        category1.setCategory(category.getCategory());
        categoryRepository.save(category1);
    }
    public Page<Category> findAll(Pageable pageable){
        return categoryRepository.findAll(pageable);
    }
}
