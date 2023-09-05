package com.DakiBookStore.service;

import com.DakiBookStore.model.InformationAccount;
import com.DakiBookStore.model.Picture;
import com.DakiBookStore.repository.InformationRepository;
import com.DakiBookStore.repository.PictureRepository;
import org.springframework.stereotype.Service;

@Service
public class InformationAccountService {
    private final InformationRepository informationRepository;
    public InformationAccountService(InformationRepository informationRepository) {
        this.informationRepository = informationRepository;
    }
    public InformationAccount findByAccountID(Long id) {
        return informationRepository.findByAccountId(id);
    }
}
