package com.debashis.ecommerce.product.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.debashis.ecommerce.product.model.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {

    List<Product> findAllByIdInOrderById(List<Integer> productIds);

}
