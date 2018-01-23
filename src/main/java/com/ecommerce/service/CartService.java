package com.ecommerce.service;

import com.ecommerce.model.Cart;

/**
 * Created by ivang on 1/19/2018.
 */
public interface CartService {

    Cart getCartById(int cartId);

    void updateCart(Cart cart);
}
