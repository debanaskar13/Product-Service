package com.debashis.ecommerce.product.dto;

import java.math.BigDecimal;

import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Positive;

public record UpdatePriceRequest(
                @NotNull(message = "Prodcut Id is required") Integer productId,
                @NotNull(message = "Prodcut Id is required") @Positive(message = "price should be greater than Zero..") BigDecimal price) {

}
