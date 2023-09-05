package com.DakiBookStore.repository;

import com.DakiBookStore.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepository extends JpaRepository<Role,Long> {
    Role findByRole(String r);
}
