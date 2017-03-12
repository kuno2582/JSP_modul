package com.ch02lifecycle;

import java.io.IOException;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LifeCycleEx03")
public class LifeCycleEx03 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LifeCycleEx03() {
        super();
    }
    
    @Override
    public void init(){
    	System.out.println("init()");
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet()");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost()");
	}
	
	@Override
	public void destroy(){
		System.out.println("destroy()");
	}
	
	@PostConstruct	//임포트 시켜야 사용가능
	private void initPostConstruct(){
		System.out.println("initPostConstruct()");
	}
	
	@PreDestroy
	private void destroyPreDestroy(){
		System.out.println("destroyPreDestroy()");
	}

}
