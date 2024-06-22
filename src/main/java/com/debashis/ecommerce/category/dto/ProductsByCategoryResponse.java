package com.debashis.ecommerce.category.dto;

import java.util.List;

import com.debashis.ecommerce.product.dto.ProductResponse;

public record ProductsByCategoryResponse(
        Integer categoryId,
        String categoryName,
        String categoryDescription,
        List<ProductResponse> products) {

}
