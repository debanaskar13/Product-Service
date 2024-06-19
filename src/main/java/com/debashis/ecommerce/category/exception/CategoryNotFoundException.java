package com.debashis.ecommerce.category.exception;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = true)
public class CategoryNotFoundException extends RuntimeException {

    private final String msg;

}
