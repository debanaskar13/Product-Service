package com.debashis.ecommerce.product.service;

import java.util.List;

import com.debashis.ecommerce.product.dto.ProductPageResponse;
import com.debashis.ecommerce.product.dto.ProductPurchaseRequest;
import com.debashis.ecommerce.product.dto.ProductPurchaseResponse;
import com.debashis.ecommerce.product.dto.ProductRequest;
import com.debashis.ecommerce.product.dto.ProductResponse;
import com.debashis.ecommerce.product.dto.ProductUpdateRequest;
import com.debashis.ecommerce.product.dto.UpdatePriceRequest;
import com.debashis.ecommerce.product.dto.UpdateQuantityRequest;

public interface ProductService {
    Integer createProduct(ProductRequest request);

    List<ProductPurchaseResponse> purchaseProducts(List<ProductPurchaseRequest> request);

    ProductResponse findById(Integer productId);

    ProductPageResponse findAll(String sortField, String direction, String page, String limit);

    String updateProduct(ProductUpdateRequest request);

    String updateQuantity(UpdateQuantityRequest request);

    String updatePrice(UpdatePriceRequest request);

}
