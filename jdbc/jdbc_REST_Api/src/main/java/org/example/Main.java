package org.example;

import java.sql.*;

public class Main {
    public static void main(String[] args) {

        //CRUD operations

        try {

            //Register the Driver class

            Class.forName("com.mysql.cj.jdbc.Driver");


            //Create the connection

            String url = "jdbc:mysql://localhost:3306/rintu";
            String user = "root";
            String password = "RKYmysql6132#";
            Connection connection= DriverManager.getConnection(url,user,password);


            //Create the statement

//            //create/insert
//            String query="insert into student(id,name,address) values(?,?,?)";
//            PreparedStatement preparedStatement=connection.prepareStatement(query);
//            preparedStatement.setInt(1,5);
//            preparedStatement.setString(2,"Prashant");
//            preparedStatement.setString(3,"Patna");

//            //update
//            String query="update student set address=? where id=?";
//            PreparedStatement preparedStatement=connection.prepareStatement(query);
//            preparedStatement.setString(1,"Bhopal");
//            preparedStatement.setInt(2,5);

//            //delete
//            String query="delete from student where id=?";
//            PreparedStatement preparedStatement=connection.prepareStatement(query);
//            preparedStatement.setInt(1,5);

            //retrieve/select
            String query = "select * from student";
            Statement statement = connection.createStatement();


            //Execute the queries

//            int i=preparedStatement.executeUpdate();
//            System.out.println(i+" rows affected!");
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
                System.out.println(resultSet.getInt("id"));
                System.out.println(resultSet.getString("name"));
                System.out.println(resultSet.getString("address"));
            }


            //Close the connection

            connection.close();
        }
        catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}