package com.daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import com.model.Category;
import com.dao.CategoryDAO;

@Repository("CategoryDAO")
public class CategoryDAOImpl implements CategoryDAO
{
	@Autowired
	SessionFactory sessionFactory;
	@Transactional

	
	public boolean addCategory(Category category) {
		try
		{
		sessionFactory.getCurrentSession().saveOrUpdate(category);
		return true;
		}
		catch(Exception e)
		{
		return false;
		}
	}

	
	public List<Category> retrieveCategory() {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Category");
		List<Category> listCategory=query.list();
		session.close();
		
		
		return listCategory;
	}
	public Category getCategory(int catid) 
	{
		Session session=sessionFactory.openSession();
		Category category=(Category)session.get(Category.class,catid);
		session.close();
		return category;
	}
@Transactional
	
	public boolean deleteCategory(Category category) 
	{	
		try
		{
		Session session=sessionFactory.getCurrentSession();
		session.delete(category);
		return true;
		}
		catch(Exception e)
		{
		System.out.println("Exception Arised:"+e);	
		return false;
		}
	}
@Transactional

public boolean updateCategory(Category category) 
{
	try
	{
	sessionFactory.getCurrentSession().saveOrUpdate(category);
	return true;
	}
	catch(Exception e)
	{
	System.out.println("Exception Arised:"+e);
	return false;
	}
}
}