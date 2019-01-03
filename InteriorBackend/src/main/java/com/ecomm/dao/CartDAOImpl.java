package com.ecomm.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ecomm.model.Cart;
@Repository("cartDAO")
@Transactional
public class CartDAOImpl  implements CartDAO
{

	@Autowired
	SessionFactory sessionFactory;
	
	
	public boolean addToCart(Cart cart) 
	{
		try
		{
			sessionFactory.getCurrentSession().save(cart);
			return true;
		}
		catch(Exception e)
		{
			System.out.println("exception occur");
			return false;
			
		}
		
	}
		
		

	public boolean deleteCart(Cart cart)
	{
		try
		{
			sessionFactory.getCurrentSession().delete(cart);
			return true;
		}
		catch(Exception e)
		{
		
		return false;
		}
		
	}

	public boolean updateCart(Cart cart) 
	{
		try
		{
			sessionFactory.getCurrentSession().update(cart);
			return true;
		}
		catch(Exception e)
		{
		
		return false;
		}
		
		
		
	}

	public Cart getCart(int cartId) 
	{
		Session session=sessionFactory.openSession();
		Cart cart=session.get(Cart.class,cartId);
	
		return cart;
		
	}
	@Override
	public boolean updateCart(String user) 
	{
		try
		{
			Session session=sessionFactory.openSession();
			Query query=session.createQuery("update Cart set status='p' where user=:uname");
			query.setParameter("uname",user);
			System.out.println(2);
			int row_eff=query.executeUpdate();
			if(row_eff>0)
                 return true;
			else
				return false;
				
		}
		catch(Exception e)
		{
			System.out.println("exception occur:"+e);
			return false;
			
		}
	}


	public List<Cart> listCartItems(String user) 
	{
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Cart where user=:uname and status='N'");
		query.setParameter("uname",user);
		List<Cart> listCartItems=query.list();
		
		return listCartItems;
	}

	
}
