package com.debashis.ecommerce.category.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.debashis.ecommerce.category.model.Category;

public interface CategoryRepository extends JpaRepository<Category, Integer> {

}
