package com.DakiBookStore.service;

import com.DakiBookStore.model.Picture;
import com.DakiBookStore.repository.PictureRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PictureService {
    private final PictureRepository pictureRepository;

    public PictureService(PictureRepository pictureRepository) {
        this.pictureRepository = pictureRepository;
    }

    public Picture findByBookID(Long id) {
        return pictureRepository.findByBookId(id);
    }
}
