package Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Product")

public class Product {
	@Id
	//@GeneratedValue(strategy=GenerationType.AUTO)
	
int id;
String productname;
String description;
double price;
 
public Product()
{
	id=0;
	productname=null;
	description=null;
	price=0.0;
}
public Product(int id,String pname,String desc,double pr)
{
	this.id=id;
	this.productname=pname;
	this.description=desc;
	this.price=pr;
}

public void setId(int id)
{
	this.id=id;
}
public int getId()
{
	return this.id;
}
public void setproductname(String pname)
{
	this.productname=pname;
}
public String getproductname()
{
	return this.productname;
}
public void setDescription(String desc)
{
	this.description=desc;
}
public String getDescription()
{
	return this.description;
}
public void setPrice(double pr)
{
	this.price=pr;
}
public double getPrice()
{
	return this.price;
}
@Override
public String toString() {
	return "Product[ id="+id+", productname="+productname+
			",description="+ description+",price="+price+"]";
}
}
