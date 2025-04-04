package com.debashis.ecommerce.category.service;

import java.util.List;

import com.debashis.ecommerce.category.dto.CategoryRequest;
import com.debashis.ecommerce.category.dto.CategoryResponse;
import com.debashis.ecommerce.category.dto.ProductsByCategoryResponse;

public interface CategoryService {

    Integer createCategory(CategoryRequest request);

    Integer updateCategory(Integer categoryId, CategoryRequest request);

    List<CategoryResponse> findAll();

    CategoryResponse findById(Integer categoryId);

    void deleteById(Integer categoryId);

    ProductsByCategoryResponse findAllProductByCategoryId(Integer categoryId);

}
