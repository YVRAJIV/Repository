package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import DAO.ProductDao;
import Model.Product;


@Service
@Transactional
//@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class ProductServiceImpl implements ProductService{
	@Autowired
   ProductDao pdi;
	public List<Product> getAll()
	{
		
	return	pdi.getAllproduct();
	}
	public void create(Product p)
	{
		pdi.addproduct(p);
	}
	 
	 public Product getRowById(int id) {
	  return pdi.getRowById(id);
	 }

	 
	 public int updateRow(Product p) {
	  return pdi.updateRow(p);
	 }

	 
	 public int deleteRow(int id) {
	  return pdi.deleteRow(id);
	 }

}
