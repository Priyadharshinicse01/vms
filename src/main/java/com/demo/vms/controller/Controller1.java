package com.demo.vms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.demo.vms.model.Product;
import com.demo.vms.model.VendorModel;
import com.demo.vms.repository.Prepository;
import com.demo.vms.repository.Vrepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class Controller1 {

    @Autowired
    private Vrepository vendorRepo;

    @Autowired
    private Prepository productRepo;

    @GetMapping("/home")
    public String home() {
        return "home";
    }

    @GetMapping("/support")
    public String SupportPage() {
        return "support";
    }

    @GetMapping("/contact")
    public String ContactPage() {
        return "contact";
    }

    @GetMapping("/login")
    public String LoginPage() {
        return "login";
    }

    @GetMapping("/signup")
    public String SignupForm() {
        return "signup";
    }

    @PostMapping("/register")
    public String registerVendor(@ModelAttribute VendorModel vendor, Model model) {
        vendor.setApproved(false); // default false
        vendorRepo.save(vendor);
        model.addAttribute("message", "Vendor registered successfully!");
        return "login";
    }

    @PostMapping("/login")
    public String login(@RequestParam String email,
                        @RequestParam String password,
                        @RequestParam String role,
                        HttpSession session,
                        Model model) {

        if ("admin".equals(role)) {
            if ("admin123@gmail.com".equals(email) && "admin123".equals(password)) {
                return "admin-dashboard";
            } else {
                model.addAttribute("error", "Invalid admin credentials");
                return "login";
            }
        } else if ("vendor".equals(role)) {
            VendorModel vendor = vendorRepo.findByEmailAndPassword(email, password);
            if (vendor != null) {
                session.setAttribute("vendorId", vendor.getId()); // ✅ Save vendor ID
                model.addAttribute("vendor", vendor);
                return "vendor-dashboard";
            } else {
                model.addAttribute("error", "Invalid vendor credentials");
                return "login";
            }
        }

        model.addAttribute("error", "Invalid role selected");
        return "login";
    }

    @GetMapping("/add-product")
    public String showAddProductForm(Model model) {
        model.addAttribute("product", new Product());
        return "add-product";
    }

    @PostMapping("/add-product")
    public String saveProduct(@ModelAttribute Product product, HttpSession session) {
        Long vendorId = (Long) session.getAttribute("vendorId");
        if (vendorId == null) return "redirect:/login";

        product.setVendorId(vendorId); // ✅ Set vendor ID from session
        product.setApproved(false);
        productRepo.save(product);
        return "redirect:/my-products";
    }

    @GetMapping("/my-products")
    public String viewMyProducts(HttpSession session, Model model) {
        Long vendorId = (Long) session.getAttribute("vendorId");
        if (vendorId == null) return "redirect:/login";

        List<Product> products = productRepo.findByVendorId(vendorId); // ✅ Filter by vendor
        model.addAttribute("products", products);
        return "my-products";
    }

    @GetMapping("/vendors")
    public String viewVendors(Model model) {
        List<VendorModel> vendors = vendorRepo.findAll();
        model.addAttribute("vendors", vendors);
        return "view-vendors";
    }

    @PostMapping("/approve-vendor")
    public String approveVendor(@RequestParam Long id) {
        VendorModel vendor = vendorRepo.findById(id).orElse(null);
        if (vendor != null) {
            vendor.setApproved(true);
            vendorRepo.save(vendor);
        }
        return "redirect:/vendors";
    }

    @GetMapping("/products")
    public String viewProducts(Model model) {
        List<Product> products = productRepo.findAll();
        model.addAttribute("products", products);
        return "view-products";
    }

    @PostMapping("/approve-product")
    public String approveProduct(@RequestParam("id") int productId) {
        Product product = productRepo.findById((long) productId).orElse(null);
        if (product != null) {
            product.setApproved(true);
            productRepo.save(product);
        }
        return "redirect:/products";
    }
}
