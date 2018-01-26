package com.dao;

import java.util.List;

import com.model.Category;

public interface CategoryDAO 
{
	public boolean addCategory(Category category);
	public List<Category> retrieveCategory();
	public Category getCategory(int catid);
	public boolean deleteCategory(Category category);
	public boolean updateCategory(Category category);
}