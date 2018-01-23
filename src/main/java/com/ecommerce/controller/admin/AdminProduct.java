package com.ecommerce.controller.admin;

import com.ecommerce.model.Product;
import com.ecommerce.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

/**
 * Created by ivang on 1/11/2018.
 */
@Controller
@RequestMapping("/admin")
public class AdminProduct {

    private Path path;

    @Autowired
    private ProductService productService;

    @RequestMapping("/product/addProduct")
    public String addProduct(Model model){
        Product product = new Product();
        product.setProductCategory("instrument");
        product.setProductCondition("new");
        product.setProductStatus("available");

        model.addAttribute("product", product);

        return "addProduct";
    }

    @RequestMapping(value = "/product/addProduct", method = RequestMethod.POST)
    public String addProductPost(@Valid @ModelAttribute("product") Product product, BindingResult result, HttpServletRequest request) {//@valid- check required fields; @ModelAttribute- grab product instance and pass it to product variable, HttpServletRequest is used to get path to store image
        // Binding Result is used if the form that has any error then it will
        // redirect to the same page without performing any functions
        if (result.hasErrors()){
            return "addProduct";
        }

        productService.addProduct(product);

        MultipartFile productImage = product.getProductImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\"+product.getProductId()+".png");
        if (productImage != null && !productImage.isEmpty()){
            try {
                productImage.transferTo(new File(path.toString()));
            }catch (Exception e){
                e.printStackTrace();
                throw new RuntimeException("Product image saving failed.", e);
            }
        }
        return "redirect:/admin/productInventory";
    }

    @RequestMapping("/product/editProduct/{id}")
    public String editProduct(@PathVariable("id") int id, Model model){
        Product product = productService.getProductById(id);

        model.addAttribute("product", product);

        return "editProduct";
    }

    @RequestMapping(value = "/product/editProduct", method = RequestMethod.POST)
    public String editProductPost(@Valid @ModelAttribute("product") Product product, BindingResult result, HttpServletRequest request) {//@valid- check required fields; @ModelAttribute- grab product instance and pass it to product variable, HttpServletRequest is used to get path to store image
        // Binding Result is used if the form that has any error then it will
        // redirect to the same page without performing any functions
        if (result.hasErrors()){
            return "editProduct";
        }


        MultipartFile productImage = product.getProductImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\"+product.getProductId()+".png");
        if (productImage != null && !productImage.isEmpty()){
            try {
                productImage.transferTo(new File(path.toString()));
            }catch (Exception e){
                e.printStackTrace();
                throw new RuntimeException("Product image saving failed.", e);
            }
        }

        productService.editProduct(product);
        return "redirect:/admin/productInventory";
    }

    @RequestMapping("/product/deleteProduct/{id}")
    public String deleteProduct(@PathVariable("id") int id, Model model, HttpServletRequest request){
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\"+id+".png");

        if (Files.exists(path)){
            try {
                Files.delete(path);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        Product product = productService.getProductById(id);
        productService.deleteProduct(product);
        return "redirect:/admin/productInventory";
    }
}
