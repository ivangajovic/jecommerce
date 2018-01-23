package com.ecommerce.service;

import com.ecommerce.model.Customer;

import java.util.List;

/**
 * Created by ivang on 1/18/2018.
 */
public interface CustomerService {

    void addCustomer(Customer customer);

    Customer getCustomerById(int customerId);

    List<Customer> getAllCustomers();

    Customer getCustomerByUsername(String username);

}
