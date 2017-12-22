package org.kumaran.model;

import java.io.Serializable;
import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import java.util.List;


/**
 * The persistent class for the products database table.
 * 
 */
@Entity
@Table(name="products")
@NamedQuery(name="Product.findAll", query="SELECT p FROM Product p")
public class Product implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	private int inventoryOnHand;

	private int inventoryReceived;

	private int inventoryShipped;

	private int minimumRequired;

	private String partNumber;

	private String productLabel;

	private String productName;

	private int startingInventory;

	/*//bi-directional many-to-one association to Order
	@JsonIgnore
	//@JsonBackReference
	@OneToMany(mappedBy="product")
	private List<Order> orders;*/

	//bi-directional many-to-one association to Purchas
	/*@OneToMany(mappedBy="product")
	private List<Purchas> purchases;
*/
	public Product() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getInventoryOnHand() {
		return this.inventoryOnHand;
	}

	public void setInventoryOnHand(int inventoryOnHand) {
		this.inventoryOnHand = inventoryOnHand;
	}

	public int getInventoryReceived() {
		return this.inventoryReceived;
	}

	public void setInventoryReceived(int inventoryReceived) {
		this.inventoryReceived = inventoryReceived;
	}

	public int getInventoryShipped() {
		return this.inventoryShipped;
	}

	public void setInventoryShipped(int inventoryShipped) {
		this.inventoryShipped = inventoryShipped;
	}

	public int getMinimumRequired() {
		return this.minimumRequired;
	}

	public void setMinimumRequired(int minimumRequired) {
		this.minimumRequired = minimumRequired;
	}

	public String getPartNumber() {
		return this.partNumber;
	}

	public void setPartNumber(String partNumber) {
		this.partNumber = partNumber;
	}

	public String getProductLabel() {
		return this.productLabel;
	}

	public void setProductLabel(String productLabel) {
		this.productLabel = productLabel;
	}

	public String getProductName() {
		return this.productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getStartingInventory() {
		return this.startingInventory;
	}

	public void setStartingInventory(int startingInventory) {
		this.startingInventory = startingInventory;
	}

/*	public List<Order> getOrders() {
		return this.orders;
	}

	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}

	public Order addOrder(Order order) {
		getOrders().add(order);
		order.setProduct(this);

		return order;
	}

	public Order removeOrder(Order order) {
		getOrders().remove(order);
		order.setProduct(null);

		return order;
	}*/

	/*public List<Purchas> getPurchases() {
		return this.purchases;
	}

	public void setPurchases(List<Purchas> purchases) {
		this.purchases = purchases;
	}*/

	/*public Purchas addPurchas(Purchas purchas) {
		getPurchases().add(purchas);
		purchas.setProduct(this);

		return purchas;
	}

	public Purchas removePurchas(Purchas purchas) {
		getPurchases().remove(purchas);
		purchas.setProduct(null);

		return purchas;
	}*/

}