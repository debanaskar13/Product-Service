package com.debashis.ecommerce.product.dto;

import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Positive;

public record UpdateQuantityRequest(
        @NotNull(message = "Product Id is required") Integer productId,
        @NotNull(message = "Quantity is required") @Positive(message = "Quantity should be greater than zero ...") double quantity) {

}
