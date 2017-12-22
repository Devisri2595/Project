package org.kumaran.controller;



import java.util.List;

import org.kumaran.model.Order;
import org.kumaran.model.Product;
import org.kumaran.service.BusinessService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class BusinessController {

	@Autowired
	BusinessService businessService;
	//@PreAuthorize("#oauth2.hasScope('sampleClientId')")
	@RequestMapping(value="/orders", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<List<Order>> getAllOrders(){
		System.out.println("Called==================================>");
		List<Order> list = businessService.getAllOrders();
		if(list.isEmpty()) {
		return new ResponseEntity<List<Order>>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<List<Order>>(list, HttpStatus.OK);
	}
	//@PreAuthorize("#oauth2.hasScope('sampleClientId')")
	@RequestMapping(value="/products", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<List<Product>> getAllProducts(){
		System.out.println("Called===============================11111111111===>");
		List<Product> list = businessService.getAllProducts();
		if(list.isEmpty()) {
		return new ResponseEntity<List<Product>>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<List<Product>>(list, HttpStatus.OK);
	}

}
