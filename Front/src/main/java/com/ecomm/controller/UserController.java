package com.ecomm.controller;

import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.dao.CategoryDAO;
import com.ecomm.dao.UserDAO;
import com.ecomm.model.Category;
import com.ecomm.model.UserDetail;

@Controller
public class UserController 
{
	
	 @Autowired
		UserDAO userDAO;
	
	@RequestMapping(value="/login_success")
	public String loginSuccess(HttpSession session,Model m)
	{
		String page="";
		boolean loggedIn=false;
		
		
		SecurityContext sContext=SecurityContextHolder.getContext();
		Authentication authentication=sContext.getAuthentication();
		
		String username=authentication.getName();
		
		Collection<GrantedAuthority> roles=(Collection<GrantedAuthority>)authentication.getAuthorities();
		
		
		for(GrantedAuthority role:roles)
		{
				session.setAttribute("role",role.getAuthority());
				
				if(role.getAuthority().equals("ROLE_ADMIN"))
				{
					loggedIn=true;
					page="AdminHome";
					session.setAttribute("loggedIn",loggedIn);
					session.setAttribute("username", username);
				}
				else
				{
					loggedIn=true;
					page="UserHome";
					session.setAttribute("loggedIn",loggedIn);
					session.setAttribute("username", username);
				}
		}
		
		return page;
	
	}
	
	@RequestMapping(value="/addregister",method=RequestMethod.POST)
    public String addUserDetail(@RequestParam("username")String name,@RequestParam("password")String Pass,@RequestParam("Emailid")String Email,@RequestParam("Mobileno")String Mobile,@RequestParam("Address")String address,Model m)
    {
   	 UserDetail userDetail=new UserDetail();
     userDetail.setUsername(name);
     userDetail.setPassword(Pass);
     userDetail.setAddress(address);
     userDetail.setMobileno(Mobile);
     userDetail.setEmailid(Email);
     userDetail.setEnabled(true);
     userDAO.registerUser(userDetail);
   	 
   	 return "Login";
   	 
    }
	
}
