package org.kumaran.model;

import java.io.Serializable;
import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import java.util.Date;


/**
 * The persistent class for the orders database table.
 * 
 */
@Entity
@Table(name="orders")
@NamedQuery(name="Order.findAll", query="SELECT o FROM Order o")
public class Order implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	private String first;

	private String last;

	private String middle;

	private int numberShipped;

	@Temporal(TemporalType.DATE)
	private Date orderDate;

	private String title;

	/*//bi-directional many-to-one association to Product
	@JsonIgnore
	//@JsonManagedReference
	@ManyToOne
	@JoinColumn(name="ProductId")
	private Product product;*/

	public Order() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirst() {
		return this.first;
	}

	public void setFirst(String first) {
		this.first = first;
	}

	public String getLast() {
		return this.last;
	}

	public void setLast(String last) {
		this.last = last;
	}

	public String getMiddle() {
		return this.middle;
	}

	public void setMiddle(String middle) {
		this.middle = middle;
	}

	public int getNumberShipped() {
		return this.numberShipped;
	}

	public void setNumberShipped(int numberShipped) {
		this.numberShipped = numberShipped;
	}

	public Date getOrderDate() {
		return this.orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

/*	public Product getProduct() {
		return this.product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}*/

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Order [id=");
		builder.append(id);
		builder.append(", first=");
		builder.append(first);
		builder.append(", last=");
		builder.append(last);
		builder.append(", middle=");
		builder.append(middle);
		builder.append(", numberShipped=");
		builder.append(numberShipped);
		builder.append(", orderDate=");
		builder.append(orderDate);
		builder.append(", title=");
		builder.append(title);
		builder.append(", product=");
	//	builder.append(product);
		builder.append("]");
		return builder.toString();
	}

}