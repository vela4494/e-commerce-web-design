package com.daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import com.model.Product;
import com.dao.ProductDAO;

@Repository("ProductDAO")
public class ProductDAOImpl implements ProductDAO
{
	@Autowired
	SessionFactory sessionFactory;

	@Transactional
	
	public boolean addProduct(Product product) 
	{
		try
		{
		sessionFactory.getCurrentSession().saveOrUpdate(product);
		return true;
		}
		catch(Exception e)
		{
		return false;
		}
	
	}

	
	public List<Product> retrieveProduct() {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Product");
		List<Product> listProduct=query.list();
		session.close();
		return listProduct;
	}
@Transactional
	
	public boolean deleteProduct(Product product) {
		try
		{
		Session session=sessionFactory.getCurrentSession();
		session.delete(product);
		return true;
		}
		catch(Exception e)
		{
		System.out.println("Exception Arised:"+e);	
		return false;
		}
	}

	
	public Product getProduct(int pid) {
		Session session=sessionFactory.openSession();
		Product product=(Product)session.get(Product.class,pid);
		session.close();
		return product;
	}

	@Transactional
	
	public boolean updateProduct(Product product) {
		try
		{
		sessionFactory.getCurrentSession().saveOrUpdate(product);
		return true;
		}
		catch(Exception e)
		{
		System.out.println("Exception Arised:"+e);
		return false;
		}
	}
}
