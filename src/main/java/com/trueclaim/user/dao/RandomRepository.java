package com.trueclaim.user.dao;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.trueclaim.user.domain.RandomCity;

@Repository
@Transactional
public interface RandomRepository extends JpaRepository<RandomCity, Long> {

}
