package com.DakiBookStore.service;




import com.DakiBookStore.model.Blog;

import java.util.List;


public interface BlogService {
    List<Blog> getAllBlogs();
    Blog getBlogById(Long id);
    Blog saveOrUpdateBlog(Blog blog);
    void deleteBlog(Long id);
}

