package com.debashis.ecommerce.category.dto;

import jakarta.validation.constraints.NotNull;

public record CategoryRequest(
        Integer categoryId,
        @NotNull(message = "Category Name is required") String categoryName,
        @NotNull(message = "Category Description is required") String categoryDescription) {

}
