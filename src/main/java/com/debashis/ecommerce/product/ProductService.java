package com.debashis.ecommerce.product;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.mapping.PropertyReferenceException;
import org.springframework.stereotype.Service;

import com.debashis.ecommerce.product.dto.ProductPageResponse;
import com.debashis.ecommerce.product.dto.ProductPurchaseRequest;
import com.debashis.ecommerce.product.dto.ProductPurchaseResponse;
import com.debashis.ecommerce.product.dto.ProductRequest;
import com.debashis.ecommerce.product.dto.ProductResponse;
import com.debashis.ecommerce.product.dto.ProductUpdateRequest;
import com.debashis.ecommerce.product.dto.UpdatePriceRequest;
import com.debashis.ecommerce.product.dto.UpdateQuantityRequest;
import com.debashis.ecommerce.product.exception.ProductNotFoundException;
import com.debashis.ecommerce.product.exception.ProductPurchasedException;

import io.micrometer.common.util.StringUtils;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@RequiredArgsConstructor
@Slf4j
public class ProductService {

    private final ProductRepository repository;
    private final ProductMapper mapper;

    public Integer createProduct(ProductRequest request) {
        return this.repository.save(this.mapper.toProduct(request)).getId();
    }

    public List<ProductPurchaseResponse> purchaseProducts(List<ProductPurchaseRequest> request) {

        var productIds = request.stream()
                .map(ProductPurchaseRequest::productId)
                .toList();
        var storedProducts = this.repository.findAllByIdInOrderById(productIds);

        if (productIds.size() != storedProducts.size()) {
            throw new ProductPurchasedException("One or more products doesn't exists");
        }

        var storesRequest = request.stream()
                .sorted(Comparator.comparing(ProductPurchaseRequest::productId))
                .toList();

        var purchasedProducts = new ArrayList<ProductPurchaseResponse>();

        for (int i = 0; i < storedProducts.size(); i++) {
            var product = storedProducts.get(i);
            var productRequest = storesRequest.get(i);

            if (product.getAvailableQuantity() < productRequest.quantity()) {
                throw new ProductPurchasedException(
                        "Insufficient stock quantity for product with ID:: " + productRequest.productId());
            }

            var newAvailableQuantity = product.getAvailableQuantity() - productRequest.quantity();
            product.setAvailableQuantity(newAvailableQuantity);
            this.repository.save(product);

            purchasedProducts.add(mapper.toPurchasedProductResponse(product, productRequest.quantity()));
        }

        return purchasedProducts;
    }

    public ProductResponse findById(Integer productId) {
        return this.repository.findById(productId).map(mapper::toProductResponse)
                .orElseThrow(() -> new ProductNotFoundException("Product not found with ID :: " + productId));
    }

    public ProductPageResponse findAll(String sortField, String direction, String page, String limit) {

        Sort.Direction sortDirection = direction.toUpperCase().equals("ASC") ? Sort.Direction.ASC : Sort.Direction.DESC;
        Sort sortBy = Sort.by(sortDirection, sortField);
        int pageNumber, pageSize;
        try {
            pageNumber = Integer.valueOf(page);
            pageSize = Integer.valueOf(limit);
        } catch (NumberFormatException e) {
            log.info(e.getMessage());
            throw new IllegalArgumentException("Invalid request parameter");
        }

        PageRequest pageRequest = PageRequest.of(pageNumber - 1, pageSize, sortBy);
        Page<Product> productPage = null;

        try {

            productPage = this.repository.findAll(pageRequest);
        } catch (PropertyReferenceException e) {
            log.info(e.getMessage());
            throw new IllegalArgumentException("Invalid request parameter");
        } catch (Exception e) {
            log.info(e.getMessage());
            throw new RuntimeException("Something went wrong");
        }
        return new ProductPageResponse(
                productPage.getTotalElements(),
                productPage.getTotalPages(),
                productPage.getNumber() + 1,
                productPage.getNumberOfElements(),
                sortField,
                sortDirection.toString(),
                productPage.getContent().stream().map(mapper::toProductResponse).toList());

    }

    public String updateProduct(ProductUpdateRequest request) {

        var product = this.repository.findById(request.id())
                .orElseThrow(() -> new ProductNotFoundException("Product not found with ID :: " + request.id()));

        mergeProduct(product, request);

        this.repository.save(product);

        return String.format("Product with id : %s has successfully updated", request.id());
    }

    private void mergeProduct(Product product, ProductUpdateRequest request) {
        if (StringUtils.isNotBlank(request.name())) {
            product.setName(request.name());
        }
        if (StringUtils.isNotBlank(request.description())) {
            product.setDescription(request.description());
        }
        if (StringUtils.isNotBlank(request.img())) {
            product.setImg(request.img());
        }
    }

    public String updateQuantity(UpdateQuantityRequest request) {
        Product product = this.repository.findById(request.productId())
                .orElseThrow(() -> new ProductNotFoundException("Product not found with ID :: " + request.productId()));

        product.setAvailableQuantity(product.getAvailableQuantity() + request.quantity());
        this.repository.save(product);

        return "Quantity Updated Successfully";
    }

    public String updatePrice(UpdatePriceRequest request) {
        Product product = this.repository.findById(request.productId())
                .orElseThrow(() -> new ProductNotFoundException("Product not found with ID :: " + request.productId()));

        product.setPrice(request.price());
        this.repository.save(product);
        return "Product price updated successfully";
    }

}
