package com.debashis.ecommerce.product.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.debashis.ecommerce.product.dto.ProductPageResponse;
import com.debashis.ecommerce.product.dto.ProductPurchaseRequest;
import com.debashis.ecommerce.product.dto.ProductPurchaseResponse;
import com.debashis.ecommerce.product.dto.ProductRequest;
import com.debashis.ecommerce.product.dto.ProductResponse;
import com.debashis.ecommerce.product.dto.ProductUpdateRequest;
import com.debashis.ecommerce.product.dto.UpdatePriceRequest;
import com.debashis.ecommerce.product.dto.UpdateQuantityRequest;
import com.debashis.ecommerce.product.service.ProductService;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/api/v1/products")
@RequiredArgsConstructor
public class ProductController {

    private final ProductService service;

    @PostMapping
    public ResponseEntity<Integer> createProduct(@RequestBody @Valid ProductRequest request) {
        return ResponseEntity.ok(this.service.createProduct(request));
    }

    @PostMapping("/purchase")
    public ResponseEntity<List<ProductPurchaseResponse>> purchaseProducts(
            @RequestBody List<ProductPurchaseRequest> request) {
        return ResponseEntity.ok(this.service.purchaseProducts(request));
    }

    @GetMapping("/{id}")
    public ResponseEntity<ProductResponse> getProductById(@PathVariable("id") Integer productId) {
        return ResponseEntity.status(HttpStatus.OK).body(this.service.findById(productId));
    }

    @GetMapping
    public ResponseEntity<ProductPageResponse> getAllProducts(
            @RequestParam(name = "sort_by", required = false, defaultValue = "id") String sortField,
            @RequestParam(name = "sort_direction", required = false, defaultValue = "ASC") String sorDirection,
            @RequestParam(name = "page", required = false, defaultValue = "1") String page,
            @RequestParam(name = "limit", required = false, defaultValue = "20") String limit

    ) {
        return ResponseEntity.status(HttpStatus.OK).body(this.service.findAll(sortField, sorDirection, page, limit));
    }

    @PutMapping
    public ResponseEntity<String> updateProductDetails(@RequestBody ProductUpdateRequest request) {
        return ResponseEntity.ok(this.service.updateProduct(request));
    }

    @PutMapping("/add-inventory")
    public ResponseEntity<String> updateProductQuantity(@RequestBody UpdateQuantityRequest request) {
        return ResponseEntity.ok(this.service.updateQuantity(request));
    }

    @PutMapping("/update-price")
    public ResponseEntity<String> updateProductPrice(@RequestBody UpdatePriceRequest request) {
        return ResponseEntity.ok(this.service.updatePrice(request));
    }
}
