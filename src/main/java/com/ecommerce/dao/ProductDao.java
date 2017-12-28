package com.ecommerce.dao;

import com.ecommerce.model.Product;

import java.util.List;

/**
 * Created by ivang on 12/11/2017.
 */
public interface ProductDao {

    void addProduct(Product product);

    Product getProductById(int id);

    List<Product> getAllProducts();

    void deleteProduct(int id);

    void editProduct(Product product);
}
