package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.ecsite.util.DBConnector;
import com.internousdev.ecsite.util.DateUtil;

public class ItemCreateCompleteDAO {

	private DBConnector dbConnector=new DBConnector();
	private Connection connection=dbConnector.getConnection();
	private DateUtil dateUtil=new DateUtil();

	String sql="INSERT INTO item_info_transaction(item_name,item_Price,item_Stock,insert_date)VALUE(?,?,?,?)";

	public void createItem(String itemName,int itemPrice,int itemStock)throws SQLException{

	try{
		PreparedStatement preparedStatement=connection.prepareStatement(sql);
		preparedStatement.setString(1, itemName);
		preparedStatement.setInt(2, itemPrice);
		preparedStatement.setInt(3, itemStock);
		preparedStatement.setString(4, dateUtil.getDate());
		preparedStatement.execute();

	}catch(SQLException e){
		e.printStackTrace();
	}finally{
		connection.close();
	}


	}
}
