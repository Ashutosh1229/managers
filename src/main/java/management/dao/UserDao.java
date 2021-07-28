package management.dao;

import org.springframework.ui.Model;

import management.entity.User;

public interface UserDao {

    
    public boolean validateUser(User theUser,Model theModel);

}