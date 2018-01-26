package com.controller;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.LinkedHashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.dao.CategoryDAO;
import com.dao.ProductDAO;
import com.dao.SupplierDAO;
import com.model.Category;
import com.model.Product;
import com.model.Supplier;

@Controller
public class ProductController 
{
	@Autowired
	ProductDAO productDAO;
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	SupplierDAO supplierDAO;	
	
	@RequestMapping(value="Product",method=RequestMethod.GET)
	public String showProduct(Model m)
	{
		Product product= new Product();
		m.addAttribute(product);
		List<Product> listProduct=productDAO.retrieveProduct();
		m.addAttribute("productList",listProduct);
		m.addAttribute("categoryList",this.getCatgories());
		m.addAttribute("supplierList", this.getSuppliers());
		return "Product";
	}
	
	@RequestMapping(value="Customer",method=RequestMethod.GET)
	public String showCustomer(Model m)
	{
		Product product1= new Product();
		m.addAttribute(product1);
		List<Product> listProduct=productDAO.retrieveProduct();
		m.addAttribute("productList",listProduct);
		m.addAttribute("categoryList",this.getCatgories());
		m.addAttribute("supplierList", this.getSuppliers());
		return "Customer";
	}
	
	@RequestMapping(value="ProductDetails/{pid}",method=RequestMethod.GET)
	public String updateProductDetails(@PathVariable("pid") int pid,Model m)
	{
		Product product=productDAO.getProduct(pid);
	
		m.addAttribute(product);
		
		List<Product> listProduct=productDAO.retrieveProduct();
		m.addAttribute("productList",listProduct);
		/*m.addAttribute("categoryList",this.getCatgories());
		m.addAttribute("supplierList", this.getSuppliers());*/
		return "ProductDetails";
	}
	
	@RequestMapping(value="updateProduct/{pid}",method=RequestMethod.GET)
	public String updateProduct(@PathVariable("pid") int pid,Model m)
	{
		Product product=productDAO.getProduct(pid);
	
		m.addAttribute(product);
		
		List<Product> listProduct=productDAO.retrieveProduct();
		m.addAttribute("productList",listProduct);
		m.addAttribute("categoryList",this.getCatgories());
		m.addAttribute("supplierList", this.getSuppliers());
		return "UpdateProduct";
	}
	@RequestMapping(value="UpdateProduct",method=RequestMethod.POST)
	public String UpdateMyProduct(@ModelAttribute("product")Product product,Model m)
	{
		productDAO.updateProduct(product);
		Product product1= new Product();
		m.addAttribute(product1);
		List<Product> listProduct=productDAO.retrieveProduct();
		m.addAttribute("productList",listProduct);
		return "Product";
	}
	@RequestMapping(value="deleteProduct/{pid}",method=RequestMethod.GET)
	public String deleteProduct(@PathVariable("pid")int pid,Model m)
	{
		Product product=productDAO.getProduct(pid);
		m.addAttribute(product);
		productDAO.deleteProduct(product);
						
		String path="E:\\My Project\\frontend\\src\\main\\webapp\\resources\\Images\\";
		
		String totalFileWithPath=path+String.valueOf(product.getPid())+".jpg";
		
		File productImage = new File(totalFileWithPath);
	
		productImage.delete();
				
		List<Product> listProduct=productDAO.retrieveProduct();
		m.addAttribute("productList",listProduct);
		return "Product";
	}
	public LinkedHashMap<Integer, String> getCatgories()
	{
		List<Category> listCategories = categoryDAO.retrieveCategory();
		LinkedHashMap<Integer, String> categoriesList = new LinkedHashMap<Integer,String>();
		
		for(Category category:listCategories)
		{
			 categoriesList.put(category.getCatid(),category.getCatname());
			 
		}
		return categoriesList;
	}
	
	public LinkedHashMap<Integer, Integer> getSuppliers()
	{
		List<Supplier> listSuppliers = supplierDAO.retrieveSupplier();
		LinkedHashMap<Integer, Integer> suppliersList = new LinkedHashMap<Integer,Integer>();
		
		for(Supplier supplier:listSuppliers)
		{
			suppliersList.put(supplier.getSid(),supplier.getSid());
			 
		}
		return suppliersList;
	}

	@RequestMapping(value="AddProduct",method=RequestMethod.POST)
	public String AddProduct(@ModelAttribute("product")Product product,@RequestParam("pimage")MultipartFile fileDetail,Model m)
	{
		productDAO.addProduct(product);
				
		String path="E:\\My Project\\frontend\\src\\main\\webapp\\resources\\Images\\";
		
		String totalFileWithPath=path+String.valueOf(product.getPid())+".jpg";
		
		File productImage = new File(totalFileWithPath);
	
		
		
		if(!fileDetail.isEmpty())
		{
			try
			{
				byte fileBuffer[]= fileDetail.getBytes();
				FileOutputStream fos = new FileOutputStream(productImage);
				BufferedOutputStream bs = new BufferedOutputStream(fos);
				bs.write(fileBuffer);
				bs.close();
			}
			catch(Exception e)
			{
				m.addAttribute("error",e.getMessage());
			}
		}
		else
		{
			m.addAttribute("error","Problem in file Uploading");
		}
		
		Product product1= new Product();
		m.addAttribute(product1);
		List<Product> listProduct=productDAO.retrieveProduct();
		m.addAttribute("productList",listProduct);
		return "Product";
	}
	
	
	@ModelAttribute
	public void fetchData(Model m)
	{
		m.addAttribute("catList",categoryDAO.retrieveCategory());
		m.addAttribute("supList",supplierDAO.retrieveSupplier());
		
	}
	@ModelAttribute
	public void addAttributes(Model m)
	{
		m.addAttribute("categoryList",categoryDAO.retrieveCategory());
		m.addAttribute("supplierList",supplierDAO.retrieveSupplier());
		/*m.addAttribute("userList",userDAO.retrieveUser());*/
	}

	
}