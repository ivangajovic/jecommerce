package com.ecommerce.dao.impl;

import com.ecommerce.dao.ProductDao;
import com.ecommerce.model.Product;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by ivang on 12/11/2017.
 */

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {

   @Autowired
   private SessionFactory sessionFactory;


   public void addProduct(Product product){
       Session session = sessionFactory.getCurrentSession();
       session.saveOrUpdate(product);
       session.flush();
   }

    public Product getProductById(int id) {
        Session session = sessionFactory.getCurrentSession();
        Product product = (Product) session.get(Product.class, id);
        session.flush();


        return product;
    }

    public List<Product> getAllProducts() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Product");
        List<Product> products = query.list();
        session.flush();

        return products;
    }

    public void deleteProduct(int id) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(getProductById(id));
        session.flush();
    }


}
