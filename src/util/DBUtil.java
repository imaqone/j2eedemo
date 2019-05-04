package util;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
public class DBUtil {
    public Connection getConnection()throws Exception{
        Connection connection=null;
        String driverClass="com.mysql.jdbc.Driver";
        String url="jdbc:mysql://localhost:3306/mvcproject";
        String name="root";
        String password="mm115599";
        Class.forName(driverClass);
        connection=DriverManager.getConnection(url,name,password);
        return connection;
    }
    public void closeDBResource(Connection connection,PreparedStatement preparedStatement,ResultSet resultSet)throws Exception{
        if(resultSet!=null){
            try{
                resultSet.close();
            }finally {
                resultSet=null;
            }
        }
        if(preparedStatement!=null){
            try{
                preparedStatement.close();
            }finally {
                preparedStatement=null;
            }
        }
        if(connection!=null){
            try{
                connection.close();
            }finally {
                connection=null;
            }
        }
    }
}
