package com.ecomm.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ecomm.model.Category;
import com.ecomm.model.UserDetail;

@Repository("userDAO")
@Transactional
public class UserDAOImpl implements UserDAO
{
@Autowired
SessionFactory sessionFactory;

	public boolean registerUser(UserDetail userDetail)
	{
		try
 		{
	sessionFactory.getCurrentSession().save(userDetail);
 		return true;
 		}
 		catch(Exception e)
 		{
 			return false;
 		}

	}

	public boolean updateUser(UserDetail userDetail) 
	{
		try
 		{
	sessionFactory.getCurrentSession().update(userDetail);
 		return true;
 		}
 		catch(Exception e)
 		{
 			return false;
 		}

	}

	public UserDetail getUser(String username) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		UserDetail userDetail=(UserDetail)session.get(UserDetail.class, username);
		session.close();
		return userDetail;
	}

	@Override
	public List<UserDetail> listUserDetail() {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from UserDetail");
		List<UserDetail> listUserDetail=query.list();
		return listUserDetail;
	}

	

}
