package com.grud.ecut.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.mahout.cf.taste.recommender.RecommendedItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.grud.ecut.dto.Json;
import com.grud.ecut.dto.MovieDto;
import com.grud.ecut.dto.UserDto;
import com.grud.ecut.entity.MovieComment;
import com.grud.ecut.entity.movie;
import com.grud.ecut.service.CommentServiceI;
import com.grud.ecut.service.MovieServiceI;
import com.grud.ecut.service.PosterServiceI;
import com.grud.ecut.service.RecommendServiceI;
import com.grud.ecut.service.UserServiceI;
import com.grud.ecut.util.MD5Util;

@Controller
@RequestMapping("/userController")
public class userController {
	
	@Autowired
	HttpServletRequest request;
	@Autowired
	HttpServletResponse response;
	@Autowired
	PosterServiceI posterService;
	@Autowired
	CommentServiceI commentService;
	@Autowired
	UserServiceI userService;
	@Autowired
	RecommendServiceI recommendService;
	@Autowired
	MovieServiceI movieService;
	@Autowired
	HttpSession session;
	
	@RequestMapping("/hello")
	public ModelAndView hello(){
		List<String> link = posterService.test();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("hello");
		mv.addObject("link", link);
		
		return mv;
	}
	
	
	@ResponseBody
	@RequestMapping(value={"/doRegister"},method=RequestMethod.POST,headers="Accept=*/*",produces = "application/json")	
	public Json register(UserDto u){
		Json j = new Json();
		j = userService.register(u);
		System.out.println(j.isSuccess());
		return j;
	}
	
	@RequestMapping("/login")
	public ModelAndView login(String username,String password){
		UserDto u = userService.login(username, MD5Util.md5(password));
		ModelAndView mv = new ModelAndView();
		if(u != null){
		mv.setViewName("redirect:/userController/index");
		session.setAttribute("id", u.getId());
		session.setAttribute("username", username);
		return mv;
		}else{
			mv.setViewName("redirect:/login");
			return mv;
		}
		
		
	}
	
	@RequestMapping("/index")
	public ModelAndView index(){
		List<MovieDto> data = movieService.getFeaturedMoview();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		mv.addObject("featuredMovies", data);
		return mv;
	}
	
	@RequestMapping("/logout")
	public String logout(){
		if (session != null) {
			session.invalidate();
		}
		return "redirect:/login";
	}

	@RequestMapping("/getMovie")
	public ModelAndView getMovie(MovieDto movie){
		String rating = movieService.getRating(movie.getId());
		List<MovieComment> comments = commentService.getComment(movie);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("single");
		mv.addObject("movie", movie);
		mv.addObject("rating", rating);	
		mv.addObject("comments",comments);
		return mv;
	}	
	
	@RequestMapping("/test")
	@ResponseBody
	public String test(){
		movieService.getFeaturedMoview();
		return "successful";
	}
	

	
}
