package com.ecommerce.dao.impl;

import com.ecommerce.dao.CartDao;
import com.ecommerce.model.Cart;
import com.ecommerce.service.CustomerOrderService;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.io.IOException;

/**
 * Created by ivang on 1/19/2018.
 */
@Repository
@Transactional
public class CartDaoImpl implements CartDao{

    @Autowired
    private SessionFactory sessionFactory;

    @Autowired
    private CustomerOrderService customerOrderService;

    public Cart getCartById(int cartId){
        Session session = sessionFactory.getCurrentSession();
        return (Cart) session.get(Cart.class, cartId);
    }

    public void updateCart(Cart cart){
        Session session = sessionFactory.getCurrentSession();
        int cartId = cart.getCartId();
        double grandTotal = customerOrderService.getCustomerOrderGrandTotal(cartId);
        cart.setGrandTotal(grandTotal);

        session.saveOrUpdate(cart);
    }

    public Cart validate(int cartId) throws IOException{
        Cart cart = getCartById(cartId);
        if (cart == null || cart.getCartItems().size() == 0){
            throw new IOException(cartId + "");
        }

        updateCart(cart);

        return cart;
    }
}
