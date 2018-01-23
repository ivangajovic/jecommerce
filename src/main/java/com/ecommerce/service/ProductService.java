package com.ecommerce.service;

import com.ecommerce.model.Product;

import java.util.List;

/**
 * Created by ivang on 1/11/2018.
 */
public interface ProductService {

    List<Product> getProductList();

    Product getProductById(int id);

    void addProduct(Product product);

    void editProduct(Product product);

    void deleteProduct(Product product);
}
