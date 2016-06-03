package service;

import java.util.List;

import Model.Product;

public interface ProductService {
	public List<Product> getAll();
	public void create(Product u);
	 public Product getRowById(int id);

	 public int updateRow(Product p);

	 public int deleteRow(int id);

}
