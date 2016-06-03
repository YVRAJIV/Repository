package DAO;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;



import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import Model.Product;

@Transactional
@Repository
public class ProductDaoImpl implements ProductDao {
	List<Product> prods;
	
	 @Autowired
	 SessionFactory sessionFactory;

	   public ProductDaoImpl(){
		   
	   }
	   
	  public List<Product> getproduct(String nm)
	  {
		  
		      prods = new ArrayList<Product>();
		      
		      Product prod1=null;
		      if(nm.equals("img1"))
				{
		    	  prod1 = new Product(1,"Guitar","Music instrument",3000.00);
		    	  
				}
		     if("img2".equals(nm))
				{
		    	prod1 = new Product(2,"Violin","Music instrument",4000.00);
		    	
				}
				
		   if("img3".equals(nm))
				{
		    	  prod1 = new Product(3,"Piano","Music instrument",4000.00);
		    	 
				}
		    prods.add(prod1);
		     return prods;
		   }
	   
	 
	   public List<Product> getAllproduct() 
	   {
		  /* prods = new ArrayList<Product>();
		  Product prod1 = new Product(1,"Guitar","Music instrument",3000.00);
		  Product prod2 = new Product(2,"Violin","Music instrument",4000.00);
		  Product prod3 = new Product(3,"Piano","Music instrument",4000.00);
		   Session session = sessionFactory.getCurrentSession();  
		   org.hibernate.Query q = session.createQuery("from ModelExmp");
	    	prods = q.list();
		   prods.add(prod1);
		   prods.add(prod2);
		   prods.add(prod3);
	      return prods;*/
		   
		  /* Session session = sessionFactory.openSession();
		    @SuppressWarnings("unchecked")
		    List<Product> employeeList = session.createQuery("from Employee").list();
		    session.close();
		    return employeeList;*/
		   
		   Session session = sessionFactory.getCurrentSession();  
	    Query q =session.createQuery("from Product");
	    	prods =(List<Product>)q.list();
	    	return prods;
	   }
	   
	   
	   public void addproduct(Product p)
	   {
		   System.out.println("In save");
			//Session s=sessionFactory.getCurrentSession();
		   
		   Session session = sessionFactory.openSession();
		    Transaction tx = (Transaction) session.beginTransaction();
			System.out.println("After current");
			session.save(p);
			 tx.commit();
			 Serializable id = session.getIdentifier(p);
			    session.close();

	   }
	 
	   
	   public Product getRowById(int id) {
	    Session session = sessionFactory.openSession();
	    Product p = (Product) session.load(Product.class, id);
	    return p;
	   }

	   
	   public int updateRow(Product p) {
	    Session session = sessionFactory.openSession();
	    Transaction tx = (Transaction) session.beginTransaction();
	    session.saveOrUpdate(p);
	    tx.commit();
	    Serializable id = session.getIdentifier(p);
	    session.close();
	    return (Integer) id;
	   }

	   
	   public int deleteRow(int id) {
	    Session session = sessionFactory.openSession();
	    Transaction tx = session.beginTransaction();
	    Product p = (Product) session.load(Product.class, id);
	    session.delete(p);
	    tx.commit();
	    Serializable ids = session.getIdentifier(p);
	    session.close();
	    return (Integer) ids;
	   }
}
