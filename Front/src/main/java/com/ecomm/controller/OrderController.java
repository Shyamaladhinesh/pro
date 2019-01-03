package com.ecomm.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.dao.CartDAO;
import com.ecomm.dao.OrderDAO;
import com.ecomm.dao.UserDAO;
import com.ecomm.model.Cart;
import com.ecomm.model.OrderDetail;
import com.ecomm.model.UserDetail;

@Controller
public class OrderController
{
	
	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	OrderDAO orderDAO;
	
	@Autowired
	UserDAO userDAO;
	
	@RequestMapping("/payment")
	public String paymentProcess(@RequestParam("pmode")String pmode,Model m,HttpSession session) 
	{
		String userr=(String)session.getAttribute("username");
		List<Cart> listCartItems=cartDAO.listCartItems(userr);
		
		OrderDetail order=new OrderDetail();
		order.setUsername(userr);
		order.setOrderDate(new Date());
		order.setPmode(pmode);
		order.setTotalShoppingAmount(this.calcTotalPrice(listCartItems));
		
		if(orderDAO.updateCartItemStatus(userr))
		{	
			orderDAO.paymentProcess(order);
			m.addAttribute("cartItems",listCartItems);
			m.addAttribute("paymentDetail",order);
			UserDetail userDetail=userDAO.getUser(userr);
			m.addAttribute("userdetail",userDetail);
		}
		
		m.addAttribute("cartItems",listCartItems);
		m.addAttribute("paymentDetail",order);
		
		
		return "Receipt";
	}
	
	
	public int calcTotalPrice(List<Cart> listCartItems)
	{

			int grandTotal=0;
			
			int count=0;
			
			while(count<listCartItems.size())
			{
				Cart cart=listCartItems.get(count);
				grandTotal=grandTotal+(cart.getQuantity()*cart.getPrice());
				count++;
			}
			
			return grandTotal;
			
	}	
	
}
