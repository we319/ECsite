package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.ecsite.dao.UserListDAO;
import com.internousdev.ecsite.dto.UserListDTO;
import com.opensymphony.xwork2.ActionSupport;

public class UserListAction extends ActionSupport{

	private ArrayList<UserListDTO>userList=new  ArrayList<UserListDTO>();
	UserListDAO userListDAO=new UserListDAO();

	public String execute()throws SQLException{

		userList=userListDAO.getUserList();
		String result=SUCCESS;
		return result;
	}

	public ArrayList<UserListDTO> getUserList(){
		return userList;
	}
	public void setUserList(ArrayList<UserListDTO>userList){
		this.userList=userList;
	}

}
