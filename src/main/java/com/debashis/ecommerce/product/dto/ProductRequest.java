package com.debashis.ecommerce.product.dto;

import java.math.BigDecimal;

import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Positive;

public record ProductRequest(
        Integer id,
        @NotNull(message = "Product name is required") String name,
        @NotNull(message = "Product description is required") String description,
        @Positive(message = "Available Quantity should be positive") double availableQuantity,
        @Positive(message = "Price should Positive") BigDecimal price,
        @NotNull(message = "Product image is required") String img,
        @NotNull(message = "Category id is required") Integer category) {

}
