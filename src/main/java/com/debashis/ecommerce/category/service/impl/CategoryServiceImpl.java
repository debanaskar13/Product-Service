package com.debashis.ecommerce.category.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.debashis.ecommerce.category.dto.CategoryRequest;
import com.debashis.ecommerce.category.dto.CategoryResponse;
import com.debashis.ecommerce.category.dto.ProductsByCategoryResponse;
import com.debashis.ecommerce.category.exception.CategoryNotFoundException;
import com.debashis.ecommerce.category.model.Category;
import com.debashis.ecommerce.category.repository.CategoryRepository;
import com.debashis.ecommerce.category.service.CategoryService;
import com.debashis.ecommerce.category.utils.CategoryUtils;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class CategoryServiceImpl implements CategoryService {

    private final CategoryRepository repository;
    private final CategoryUtils categoryUtils;

    @Override
    public Integer createCategory(CategoryRequest request) {
        Category category = this.categoryUtils.toCategory(request);
        return this.repository.save(category).getId();
    }

    @Override
    public Integer updateCategory(Integer categoryId, CategoryRequest request) {
        Category category = this.repository.findById(categoryId)
                .orElseThrow(() -> new CategoryNotFoundException("Category not found with ID :: " + categoryId));
        category.setName(request.categoryName());
        category.setDescription(request.categoryDescription());
        Category savedCategory = this.repository.save(category);
        return savedCategory.getId();
    }

    @Override
    public List<CategoryResponse> findAll() {
        return this.repository.findAll().stream().map(this.categoryUtils::toCategoryResponse).toList();
    }

    @Override
    public CategoryResponse findById(Integer categoryId) {
        return this.repository.findById(categoryId)
                .map(this.categoryUtils::toCategoryResponse)
                .orElseThrow(() -> new CategoryNotFoundException("Category not found with ID :: " + categoryId));
    }

    @Override
    public void deleteById(Integer categoryId) {
        this.findById(categoryId);
        this.repository.deleteById(categoryId);
    }

    @Override
    public ProductsByCategoryResponse findAllProductByCategoryId(Integer categoryId) {
        return this.repository.findById(categoryId)
                .map(this.categoryUtils::toProductsByCategoryResponse)
                .orElseThrow(() -> new CategoryNotFoundException("Category not found with ID :: " + categoryId));
    }

}
