package com.DakiBookStore.service.impl;


import com.DakiBookStore.model.Blog;
import com.DakiBookStore.repository.BlogRepository;
import com.DakiBookStore.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class BlogServiceImpl implements BlogService {

    @Autowired
    private BlogRepository blogRepository;

    @Override
    public List<Blog> getAllBlogs() {
        return blogRepository.findAll(Sort.by(Sort.Direction.DESC, "id"));
    }

    @Override
    public Blog getBlogById(Long id) {
        return blogRepository.findById(id).orElse(null);
    }

    @Override
    public Blog saveOrUpdateBlog(Blog blog) {
        return blogRepository.save(blog);
    }

    @Override
    public void deleteBlog(Long id) {
        blogRepository.deleteById(id);
    }
}