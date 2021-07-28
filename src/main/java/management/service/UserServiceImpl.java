package management.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import management.dao.UserDao;
import management.entity.User;


@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;
    @Transactional
    public boolean validateUser(User theUser,Model theModel) {
    	if(userDao.validateUser(theUser,theModel)) return true;
    	else return false;
    	
    }

}