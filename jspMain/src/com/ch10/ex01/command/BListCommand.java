package com.ch10.ex01.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ch10.ex01.dao.BDao;
import com.ch10.ex01.dto.BDto;

public class BListCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		BDao dao = new BDao();
		
		ArrayList<BDto> dtos = dao.list();
		
		request.setAttribute("list", dtos);
		
	}

}
