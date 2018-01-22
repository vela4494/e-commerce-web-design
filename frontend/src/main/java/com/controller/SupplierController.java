package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dao.SupplierDAO;
import com.model.Supplier;

@Controller
public class SupplierController 
{

	@Autowired
	SupplierDAO supplierDAO;
	
	@RequestMapping(value="Supplier",method=RequestMethod.GET)
	public String showSupplier(Model m)
	{
		Supplier supplier = new Supplier();
		m.addAttribute(supplier);
		
		List<Supplier> listSupplier=supplierDAO.retrieveSupplier();
		m.addAttribute("supplierList",listSupplier);
		return "Supplier";
	}
	
	
	@RequestMapping(value="addsupplier",method=RequestMethod.POST)
	public String addSupplier(@ModelAttribute("supplier")Supplier supplier,Model m)
	{
		supplierDAO.addSupplier(supplier);
		
		List<Supplier> listSupplier=supplierDAO.retrieveSupplier();
		m.addAttribute("supplierList",listSupplier);
		
		return "Admin";
	}
	
	@RequestMapping(value="deleteSupplier/{sid}",method=RequestMethod.GET)
	public String deleteSupplier(@PathVariable("sid")int sid,Model m)
	{
		Supplier supplier=supplierDAO.getSupplier(sid);
		supplierDAO.deleteSupplier(supplier);
		m.addAttribute(supplier);
		List<Supplier> listSupplier=supplierDAO.retrieveSupplier();
		m.addAttribute("supplierList",listSupplier);
		return "Supplier";
	}
	
	@RequestMapping(value="updateSupplier/{sid}",method=RequestMethod.GET)
	public String updateSupplier(@PathVariable("sid") int sid,Model m)
	{
		Supplier supplier=supplierDAO.getSupplier(sid);
		m.addAttribute(supplier);
		
		List<Supplier> listSupplier=supplierDAO.retrieveSupplier();
		m.addAttribute("supplierList",listSupplier);
		return "UpdateSupplier";
	}
	
	@RequestMapping(value="UpdateSupplier",method=RequestMethod.POST)
	public String updateMySupplier(@ModelAttribute("supplier")Supplier supplier,Model m)
	{
		supplierDAO.updateSupplier(supplier);
		
		m.addAttribute(supplier);
		
		List<Supplier> listSupplier=supplierDAO.retrieveSupplier();
		m.addAttribute("supplierList",listSupplier);
		return "Supplier";
		
	}
}
