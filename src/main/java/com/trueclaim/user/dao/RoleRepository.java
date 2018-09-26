package com.trueclaim.user.dao;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.trueclaim.user.domain.Role;

@Repository
@Transactional
public interface RoleRepository extends JpaRepository<Role, Long>{
		
}
