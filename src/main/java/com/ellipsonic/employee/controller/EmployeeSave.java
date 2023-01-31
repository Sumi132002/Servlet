package com.ellipsonic.employee.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ellipsonic.employee.dao.EmployeeDao;
import com.ellipsonic.employee.dto.Employee;

@WebServlet("/saveEmployee")
public class EmployeeSave extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Employee employee = new Employee();
		employee.setFullName(req.getParameter("fullname"));
		employee.setCountry(req.getParameter("country"));
		employee.setDob(Date.valueOf(req.getParameter("dob")));
		employee.setMobile(Long.parseLong(req.getParameter("number")));
		employee.setState(req.getParameter("state"));
		employee.setSkill(req.getParameterValues("skills"));
		employee.setEmail(req.getParameter("email"));

		EmployeeDao dao = new EmployeeDao();
		dao.save(employee);

		resp.sendRedirect("fetchAll");
		
	}
}
