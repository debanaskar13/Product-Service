package com.debashis.ecommerce.category.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.debashis.ecommerce.category.dto.CategoryRequest;
import com.debashis.ecommerce.category.dto.CategoryResponse;
import com.debashis.ecommerce.category.service.CategoryService;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v1/categories")
public class CategoryController {

    private final CategoryService service;

    @PostMapping
    public ResponseEntity<Integer> createCategory(@RequestBody CategoryRequest request) {
        return ResponseEntity.status(HttpStatus.CREATED).body(this.service.createCategory(request));
    }

    @PutMapping("/{category-id}")
    public ResponseEntity<Integer> updateCategory(@PathVariable("category-id") Integer categoryId,
            @RequestBody CategoryRequest request) {

        return ResponseEntity.ok(this.service.updateCategory(categoryId, request));
    }

    @GetMapping
    public ResponseEntity<List<CategoryResponse>> getAllCategory() {
        return ResponseEntity.ok(this.service.findAll());
    }

    @GetMapping("/{category-id}")
    public ResponseEntity<CategoryResponse> getCategoryById(@PathVariable("category-id") Integer categoryId) {
        return ResponseEntity.ok(this.service.findById(categoryId));
    }

    @GetMapping
    public ResponseEntity<Void> deleteCategoryById(@PathVariable("category-id") Integer categoryId) {
        this.service.deleteById(categoryId);
        return ResponseEntity.ok().build();
    }

}
