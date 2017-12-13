package com.ecommerce.controller;

import com.ecommerce.dao.ProductDao;
import com.ecommerce.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import java.util.List;

/**
 * Created by ivang on 12/13/2017.
 */
@Controller
public class AdminController {

    @Autowired
    private ProductDao productDao;


    @RequestMapping("/admin")
    public String adminPage(){
        return "admin";
    }


    @RequestMapping("/admin/productInventory")
    public String productInventory(Model model){
        List<Product> products = productDao.getAllProducts();
        model.addAttribute("products", products);

        return "productInventory";
    }


    @RequestMapping("/admin/productInventory/addProduct")
    public String addProduct(Model model){
        Product product = new Product();
        product.setProductCategory("Instruments");
        product.setProductCondition("new");
        product.setProductStatus("available");

        model.addAttribute("product", product);
        return "addProduct";
    }


    @RequestMapping(value = "/admin/productInventory/addProduct", method = RequestMethod.POST)
    public String addProductPost(@Valid @ModelAttribute("product") Product product, BindingResult result){
        if (result.hasErrors()){
            return "addProduct";
        }
        productDao.addProduct(product);

        return "redirect:/admin/productInventory";
    }

}
