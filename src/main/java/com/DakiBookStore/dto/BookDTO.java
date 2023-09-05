package com.DakiBookStore.dto;

import com.DakiBookStore.model.Author;
import com.DakiBookStore.model.Book_Details;
import com.DakiBookStore.model.Category;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class BookDTO {
    private Long id;
    private String bookName;
    private String bookDescription;
    private long price;
    private int currentQuantity;
    private Category category;
    private Author author;
}
