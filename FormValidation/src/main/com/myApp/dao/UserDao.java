package main.com.myApp.dao;

import main.com.myApp.model.UserModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.sql.PreparedStatement;
import java.sql.SQLException;

@Component
public class UserDao {

    private DatabaseOperations databaseOperations;


    @Autowired
    public UserDao(DatabaseOperations databaseOperations) {
        this.databaseOperations = databaseOperations;
    }

    public UserModel insert(UserModel userModel) throws SQLException {
        try {
            String insertStatement = "insert into user (username , password , email) VALUE (?,?,?)";
            PreparedStatement preparedStatement = databaseOperations.getConnection().prepareStatement(insertStatement);
            preparedStatement.setString(1 ,userModel.getUsername());
            preparedStatement.setString(2 ,userModel.getPassword());
            preparedStatement.setString(3 ,userModel.getEmail());
            preparedStatement.execute();
            return  userModel;
        } catch (Exception exception) {
            exception.printStackTrace();
        }
        return null;
    }



}
