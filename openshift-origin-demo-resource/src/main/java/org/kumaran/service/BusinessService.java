package org.kumaran.service;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.kumaran.model.Order;
import org.kumaran.model.Product;
import org.springframework.stereotype.Service;

@Service
public class BusinessService {


	
	@PersistenceContext
    private EntityManager em;
	
	
	
	@SuppressWarnings("unchecked")
	public List<Order> getAllOrders(){
		javax.persistence.Query query = em.createNativeQuery("select * from orders", Order.class);
			List<Order> list =  (List<Order>)query.getResultList();
		
		/*for(Object ord : list) {
			System.out.println(ord.toString());
		}*/
		
		return list;
	}
	
	@SuppressWarnings("unchecked")
	public List<Product> getAllProducts(){
		javax.persistence.Query query = em.createNativeQuery("select * from products", Product.class);
			List<Product> list =  (List<Product>)query.getResultList();
			
		
		/*for(Object ord : list) {
			System.out.println(ord.toString());
		}*/
		
		return list;
	}
	
}
