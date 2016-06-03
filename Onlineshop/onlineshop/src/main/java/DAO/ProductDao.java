package DAO;

import java.util.List;

import Model.Product;

public interface ProductDao {
public List<Product> getAllproduct();

public List<Product> getproduct(String s);
public void addproduct(Product p);

public Product getRowById(int id);

public int updateRow(Product p);

public int deleteRow(int id); 
	 
}
