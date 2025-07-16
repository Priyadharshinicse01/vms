package com.demo.vms.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.demo.vms.model.VendorModel;

public interface Vrepository extends JpaRepository<VendorModel, Long> {
    VendorModel findByEmailAndPassword(String email, String password);
}
