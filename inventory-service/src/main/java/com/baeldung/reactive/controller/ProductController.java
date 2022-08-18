package com.baeldung.reactive.controller;

import com.baeldung.constants.OrderStatus;
import com.baeldung.domain.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.baeldung.domain.Product;
import com.baeldung.reactive.service.ProductService;

import lombok.extern.slf4j.Slf4j;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

@Slf4j
@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/api/products")
public class ProductController {

    @Autowired
    ProductService productService;

    @GetMapping
    public Flux<Product> getAllProducts() {
        log.info("Get all products invoked.");
        return productService.getProducts();
    }

    @PostMapping
    public Mono<Product> create(@RequestBody Product product) {
        log.info("Create product invoked with: {}", product);
        return productService.createOrder(product);
    }

}
