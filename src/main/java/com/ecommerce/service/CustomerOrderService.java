package com.ecommerce.service;

import com.ecommerce.model.CustomerOrder;

/**
 * Created by ivang on 1/22/2018.
 */
public interface CustomerOrderService {

    void addCustomerOrder(CustomerOrder customerOrder);

    double getCustomerOrderGrandTotal(int cartId);
}
