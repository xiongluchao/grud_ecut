package com.grud.model;

import com.mysql.cj.jdbc.MysqlDataSource;
import org.apache.mahout.cf.taste.impl.model.jdbc.ConnectionPoolDataSource;
import org.apache.mahout.cf.taste.impl.model.jdbc.MySQLJDBCDataModel;
import org.apache.mahout.cf.taste.model.JDBCDataModel;

public class MyDataModel {

	public static JDBCDataModel myDataModel() {
        MysqlDataSource dataSource = new MysqlDataSource();
        JDBCDataModel dataModel = null;
        try {
	        dataSource.setServerName("127.0.0.1");
	        dataSource.setUser("root");
	        dataSource.setPassword("root");
	        dataSource.setDatabaseName("movie");

	        ConnectionPoolDataSource connectionPool=new ConnectionPoolDataSource(dataSource);
	        dataModel =  new MySQLJDBCDataModel(connectionPool,"movie_preferences", "userID", "movieID","preference",null);


        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        return dataModel;
    } 

}
