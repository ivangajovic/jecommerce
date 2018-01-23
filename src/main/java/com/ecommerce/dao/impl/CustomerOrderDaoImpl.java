package com.ecommerce.dao.impl;

import com.ecommerce.dao.CustomerOrderDao;
import com.ecommerce.model.CustomerOrder;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by ivang on 1/22/2018.
 */
@Repository
@Transactional
public class CustomerOrderDaoImpl  implements CustomerOrderDao{

    @Autowired
    private SessionFactory sessionFactory;

    public void addCustomerOrder(CustomerOrder customerOrder){
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(customerOrder);
        session.flush();
    }
}
