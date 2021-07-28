package management.service;

import org.springframework.ui.Model;

import management.entity.User;

public interface UserService {
	
   
    public boolean validateUser(User theUser, Model theModel);

}
