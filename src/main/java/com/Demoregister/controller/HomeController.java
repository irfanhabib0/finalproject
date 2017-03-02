//package com.Demoregister.controller;
//
//import javax.servlet.http.HttpSession;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.servlet.ModelAndView;
//
//@Controller
//public class HomeController {
//	@Autowired
//	private HttpSession session;
//	@RequestMapping("/")
//	public ModelAndView homePage()
//	{
//		ModelAndView mv=new ModelAndView("landing");
//		return mv;
//	}
//	@RequestMapping("/loginpage")
//	public ModelAndView logi()
//	{
//		ModelAndView mv=new ModelAndView("loginpp");
//		return mv;
//	}
//	@RequestMapping("/regispage")
//	public ModelAndView regi()
//	{
//		ModelAndView mv=new ModelAndView("registration");
//		return mv;
//	}
//	@RequestMapping("/validate" )
//	public ModelAndView validCredential(@RequestParam("username") String id,@RequestParam("password") String pwd)
//	{
//		
//		
//		if(id.equals("niit")&& pwd.equals("pass"))
//		{
//			ModelAndView mv=new ModelAndView("homepage");
//			mv.addObject("successmessage","valid credentials" );
//			session.setAttribute("content", "hi, you're logged in successfully");
//			return mv;
//		}
//		else
//		{
//			ModelAndView mv=new ModelAndView("homepage");
//			mv.addObject("errormessage", "invalid credentials");
//			
//			return mv;
//		}
//		
//	}
//	@RequestMapping("/logout")
//	public ModelAndView logout()
//	{
//		session.invalidate();
//		ModelAndView mv=new ModelAndView("landing");
//		return mv;
//	}
//}
