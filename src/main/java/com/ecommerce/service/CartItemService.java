package com.ecommerce.service;

import com.ecommerce.model.Cart;
import com.ecommerce.model.CartItem;

/**
 * Created by ivang on 1/19/2018.
 */
public interface CartItemService {

    void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByProductId(int productId);
}
