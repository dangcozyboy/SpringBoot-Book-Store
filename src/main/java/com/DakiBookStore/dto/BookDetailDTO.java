package com.DakiBookStore.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class BookDetailDTO {
    private long id;
    private String Publishing_House;
    private String size;
    private int pages;
    private String Book_Cover;
    private int Publishing_Year;
}
