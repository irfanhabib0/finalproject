package com.Demoregister.dao;

import java.util.List;

import com.Demoregister.model.Product;

public interface productDAO {
	public List<Product> gettotalProd();
	public void insertProduct(Product p);
	public void deleteByProductId(Product p);
	public void updateByProductId(Product p);
	public Product getById(int i);
	public List<Product> getByCategory(String cat);
	

}
