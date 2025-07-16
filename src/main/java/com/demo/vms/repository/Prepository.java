package com.demo.vms.repository;

import com.demo.vms.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface Prepository extends JpaRepository<Product, Long> {
    List<Product> findByVendorId(Long vendorId);
}
