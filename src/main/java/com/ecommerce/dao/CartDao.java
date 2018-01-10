package com.ecommerce.dao;

import com.ecommerce.model.Cart;

/**
 * Created by ivang on 1/3/2018.
 */
public interface CartDao {

    Cart create(Cart cart);

    Cart read(String cartId);

    void update(String cartId, Cart cart);

    void delete(String cartId);
}
