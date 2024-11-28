package com.markscard.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.markscard.models.Admin;

@Repository
public interface AdminDao extends JpaRepository<Admin, String> {

}
