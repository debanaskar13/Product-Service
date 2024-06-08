package com.debashis.ecommerce.product.dto;

import java.math.BigDecimal;

public record ProductResponse(
                Integer id,
                String name,
                String description,
                double availableQuantity,
                BigDecimal price,
                String img,
                Integer categoryId,
                String categoryName,
                String categoryDescription) {

}
