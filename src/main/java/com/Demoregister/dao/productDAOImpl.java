package com.Demoregister.dao;

import java.util.List;


import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;

import com.Demoregister.model.Product;
@Transactional
public class productDAOImpl implements productDAO {
	@Autowired
    private SessionFactory sessionFactory;
	public List<Product> gettotalProd() {
		return sessionFactory.getCurrentSession().createQuery("from Product").list();
	}
    
	public void insertProduct(Product p) {
		sessionFactory.getCurrentSession().save(p);		
	}

	
	
	
	public void deleteByProductId(Product p) {
		sessionFactory.getCurrentSession().delete(p);
		
	}

	@Override
	public void updateByProductId(Product p) {
		sessionFactory.getCurrentSession().update(p);
		
		
	}

	@Override
	public Product getById(int i) {
		
		return sessionFactory.getCurrentSession().get(Product.class, i);
	}

	@Override
	public List<Product> getByCategory(String cat) {
			Query q=sessionFactory.getCurrentSession().createQuery("from Product where productcategory=?");
		q.setParameter(0, cat);
		return q.list();
	}
	
}
