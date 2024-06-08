package com.debashis.ecommerce.product.dto;

import java.util.List;

public record ProductPageResponse(
                long total_records,
                long total_pages,
                int page_number,
                int number_of_records,
                String order_by,
                String order_direction,
                List<ProductResponse> data) {

}
