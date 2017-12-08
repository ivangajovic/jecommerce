package com.ecommerce.dao;

import com.ecommerce.model.Product;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by ivang on 12/7/2017.
 */
public class ProductDao {

    private List<Product> productList;

    public List<Product> getProductList(){

        Product product1 = new Product();
        product1.setProductId(1);
        product1.setProductName("Stratocaster");
        product1.setProductCategory("Instruments");
        product1.setProductDescription("The world's greatest electric guitar comes in a variety of platforms.");
        product1.setProductStatus("Available");
        product1.setProductManufacturer("Fender");
        product1.setProductPrice(1570.55);
        product1.setUnitInStock(16);
        product1.setProductCondition("New");


        Product product2 = new Product();
        product2.setProductId(2);
        product2.setProductName("D5 Stagepack");
        product2.setProductCategory("Microphones");
        product2.setProductDescription("AKG microphones are a synthesis of leading-edge industrial design, innovative electronics and world-class acoustics.");
        product2.setProductStatus("Soon");
        product2.setProductManufacturer("AKG Acoustics");
        product2.setProductPrice(119.00);
        product2.setUnitInStock(20);
        product2.setProductCondition("New");


        Product product3 = new Product();
        product3.setProductId(3);
        product3.setProductName("QuietComfort 35 wireless headphones II");
        product3.setProductCategory("Headphones");
        product3.setProductDescription("Enjoy clear, noise cancelling headphones, aviation headsets, sports earphones and wireless headphones with world-class performance and comfort.");
        product3.setProductStatus("Available");
        product3.setProductManufacturer("Bose");
        product3.setProductPrice(349.95);
        product3.setUnitInStock(34);
        product3.setProductCondition("New");

        productList = new ArrayList<Product>();
        productList.add(product1);
        productList.add(product2);
        productList.add(product3);


        return productList;

    }

    public Product getProductById(int productId) throws IOException {
        for (Product product: getProductList()){
            if (product.getProductId() == productId){
                return product;
            }
        }
        throw new IOException("No product found.");
    }
}
