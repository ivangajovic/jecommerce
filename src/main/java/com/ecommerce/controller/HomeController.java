package com.ecommerce.controller;

import com.ecommerce.dao.ProductDao;
import com.ecommerce.dao.impl.ProductDaoImpl;
import com.ecommerce.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import java.io.IOException;
import java.util.List;

/**
 * Created by ivang on 12/6/2017.
 */
@Controller
public class HomeController {

    @Autowired
    private ProductDao productDao;

    @RequestMapping("/")
    public String home(){
        return "home";
    }


    @RequestMapping("/productList")
    public String getProducts(Model model){
        List<Product> products = productDao.getAllProducts();
        model.addAttribute("products", products);

        return "productList";
    }


    @RequestMapping("/productList/viewProduct/{productId}")
    public String viewProduct(@PathVariable int productId, Model model) throws IOException {

        Product product = productDao.getProductById(productId);
        model.addAttribute(product);

        return "viewProduct";
    }



}
