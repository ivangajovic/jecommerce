package com.ecommerce.dao;

import com.ecommerce.model.Product;

import java.util.List;

/**
 * Created by ivang on 12/11/2017.
 */
public interface ProductDao {


    List<Product> getProductList();

    Product getProductById(int id);

    void addProduct(Product product);

    void editProduct(Product product);

    void deleteProduct(Product product);
}
