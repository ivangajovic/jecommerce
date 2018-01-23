package com.ecommerce.dao;

import com.ecommerce.model.Cart;

import java.io.IOException;

/**
 * Created by ivang on 1/3/2018.
 */
public interface CartDao {

    Cart getCartById(int cartId);

    Cart validate(int cartId) throws IOException;

    void updateCart(Cart cart);


}
