package jdbc;

import java.sql.*;

public class Main {
    public static void main(String[] args) {
        try {
            //Register the Driver class
            Class.forName("com.mysql.cj.jdbc.Driver");
            //DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());


            //Create the connection
            String url = "jdbc:mysql://localhost:3306/rintu";
            String user = "root";
            String password = "RKYmysql6132#";
            Connection connection = DriverManager.getConnection(url, user, password);


            //Create the statement
            String query = "select * from student";
            Statement statement = connection.createStatement();


            //Execute the queries
            ResultSet resultSet = statement.executeQuery(query);


            while (resultSet.next()) {
                System.out.println(resultSet.getInt("id"));
                System.out.println(resultSet.getString("name"));
                System.out.println(resultSet.getString("address"));
            }


            //Close the connection
            connection.close();
        }
        catch (SQLException e){
            System.out.println(e);
        }
        catch (ClassNotFoundException e){
            System.out.println(e);
        }
    }
}