package com.debashis.ecommerce.product.dto;

import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Positive;

public record ProductUpdateRequest(
        @NotNull(message = "Product id is required") @Positive(message = "Product id must be positive") Integer id,
        String name,
        String description,
        String img) {

}
