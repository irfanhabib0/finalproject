package com.Demoregister.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.Demoregister.dao.productDAO;
import com.Demoregister.model.Product;



@Controller
public class ProductController {
	@Autowired
	productDAO pd;
	@RequestMapping("/")
	public ModelAndView prodt(@ModelAttribute("product") Product product){
		
		ModelAndView mv=new ModelAndView("index");
	

		return mv;
	}
	
     @RequestMapping(value="productee",method=RequestMethod.POST)
     public String addProductPost( @ModelAttribute("product") Product product,HttpServletRequest request)
     {
    	 
    	 pd.insertProduct(product);
    	 MultipartFile file=product.getFile();
    	 String originalfile=file.getOriginalFilename();
    	 String fpath=request.getSession().getServletContext().getRealPath("/resources/images/product/");
    	 String fname=fpath+"\\"+product.getProductid()+".jpg";
    			 try{
    				 byte imgarr[]=product.getFile().getBytes();
    				 BufferedOutputStream fos= new BufferedOutputStream(new FileOutputStream(fname));
    				 fos.write(imgarr);
    				 fos.close();
    			 }
    			 catch(IOException e)
    			 {
    				 e.printStackTrace();
    			 }
    	 return "redirect:/productDetails";
     }
     @RequestMapping(value="/productDetails")
     public String showProductInvnt(Model model)
     {
    	 List<Product>products=pd.gettotalProd();
    	 model.addAttribute("products",products);
    	 return "productDetails";
    	 
     }
     @RequestMapping(value="/getview")
     public String showviewALL(Model model)
     {
    	 List<Product>products=pd.gettotalProd();
    	 model.addAttribute("products",products);
    	 return "productDetails";
    	 
     }
     @RequestMapping("/getview/{category}")
     public ModelAndView sortByCategory(@PathVariable("category") String cat)
     {
    	 ModelAndView mv=new ModelAndView("productDetails");
    	 List<Product> pp=pd.getByCategory(cat);
    	 mv.addObject("products", pp);
    	 return mv;
     }
     @RequestMapping(value="/productDet/{productid}")
     public String deleteProduct(@PathVariable("productid") int productid, @ModelAttribute("Product") Product p)
     {
    	pd.deleteByProductId(p);
		return "redirect:/productDetails";
    	 
     }
     @RequestMapping(value="/productUpd/{productid}")
     public ModelAndView updateProduct(@PathVariable("productid") int productid, @ModelAttribute("p") Product p)
     {
      	ModelAndView mv=new ModelAndView("editpage");
      	Product prd= pd.getById(productid);
      	mv.addObject("p", prd);
		return mv;
    	 
     }
     @RequestMapping(value="/productUpd")
     public String saveAfterEditProduct( @ModelAttribute("Product") Product p)
     {
    	 pd.updateByProductId(p);
    	 return "redirect:/productDetails";
     }
     
}
