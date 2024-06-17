package com.debashis.ecommerce.product.utils;

import org.springframework.stereotype.Service;

import com.debashis.ecommerce.category.Category;
import com.debashis.ecommerce.product.dto.ProductPurchaseResponse;
import com.debashis.ecommerce.product.dto.ProductRequest;
import com.debashis.ecommerce.product.dto.ProductResponse;
import com.debashis.ecommerce.product.model.Product;

@Service
public class ProductMapper {

    public Product toProduct(ProductRequest request) {
        return Product.builder()
                .name(request.name())
                .description(request.description())
                .availableQuantity(request.availableQuantity())
                .price(request.price())
                .img(request.img())
                .category(Category.builder().id(request.category()).build())
                .build();
    }

    public ProductResponse toProductResponse(Product product) {
        return new ProductResponse(
                product.getId(),
                product.getName(),
                product.getDescription(),
                product.getAvailableQuantity(),
                product.getPrice(),
                product.getImg(),
                product.getCategory().getId(),
                product.getCategory().getName(),
                product.getCategory().getDescription());
    }

    public ProductPurchaseResponse toPurchasedProductResponse(Product product, double quantity) {
        return new ProductPurchaseResponse(product.getId(), product.getName(), product.getDescription(),
                product.getPrice(), quantity);
    }

}
