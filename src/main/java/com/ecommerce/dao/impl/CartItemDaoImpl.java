package com.ecommerce.dao.impl;

import com.ecommerce.dao.CartItemDao;
import com.ecommerce.model.Cart;
import com.ecommerce.model.CartItem;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by ivang on 1/19/2018.
 */
@Repository
@Transactional
public class CartItemDaoImpl implements CartItemDao{

    @Autowired
    private SessionFactory sessionFactory;


    public void addCartItem(CartItem cartItem){
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(cartItem);
        session.flush();
    }

    public void removeCartItem(CartItem cartItem){
        Session session = sessionFactory.getCurrentSession();
        session.delete(cartItem);
        session.flush();
    }

    public void removeAllCartItems(Cart cart){
        List<CartItem> cartItems = cart.getCartItems();

        for (CartItem item : cartItems){
            removeCartItem(item);
        }
    }

    public CartItem getCartItemByProductId(int productId){
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from CartItem where productId = ?");
        query.setInteger(0, productId);
        return (CartItem) query.uniqueResult();
    }
}
