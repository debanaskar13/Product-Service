package com.debashis.ecommerce.category.utils;

import org.springframework.stereotype.Service;

import com.debashis.ecommerce.category.dto.CategoryRequest;
import com.debashis.ecommerce.category.dto.CategoryResponse;
import com.debashis.ecommerce.category.dto.ProductsByCategoryResponse;
import com.debashis.ecommerce.category.model.Category;
import com.debashis.ecommerce.product.utils.ProductMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class CategoryUtils {

    private final ProductMapper mapper;

    public CategoryResponse toCategoryResponse(Category category) {
        return new CategoryResponse(
                category.getId(),
                category.getName(),
                category.getDescription());
    }

    public ProductsByCategoryResponse toProductsByCategoryResponse(Category category) {
        return new ProductsByCategoryResponse(
                category.getId(),
                category.getName(),
                category.getDescription(),
                category.getProducts().stream().map(this.mapper::toProductResponse).toList());
    }

    public Category toCategory(CategoryRequest request) {
        return Category.builder()
                .name(request.categoryName())
                .description(request.categoryDescription())
                .build();
    }
}
